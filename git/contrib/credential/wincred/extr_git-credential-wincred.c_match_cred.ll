; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_match_cred.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_match_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@wusername = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 103, i32 105, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 58, i32 0], align 4
@protocol = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i32] [i32 58, i32 47, i32 47, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 64, i32 0], align 4
@host = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4
@path = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @match_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_cred(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* @wusername, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i64, i64* @wusername, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ bitcast ([1 x i32]* @.str to i8*), %20 ]
  %23 = call i64 @wcscmp(i64 %11, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %48

26:                                               ; preds = %21, %1
  %27 = call i64 @match_part(i32* %4, i8* bitcast ([4 x i32]* @.str.1 to i8*), i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i8*, i8** @protocol, align 8
  %31 = call i64 @match_part(i32* %4, i8* %30, i8* bitcast ([4 x i32]* @.str.3 to i8*))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i64, i64* @wusername, align 8
  %35 = call i64 @match_part_last(i32* %4, i64 %34, i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** @host, align 8
  %39 = call i64 @match_part(i32* %4, i8* %38, i8* bitcast ([2 x i32]* @.str.5 to i8*))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** @path, align 8
  %43 = call i64 @match_part(i32* %4, i8* %42, i8* bitcast ([1 x i32]* @.str to i8*))
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %37, %33, %29, %26
  %46 = phi i1 [ false, %37 ], [ false, %33 ], [ false, %29 ], [ false, %26 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %25
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @wcscmp(i64, i8*) #1

declare dso_local i64 @match_part(i32*, i8*, i8*) #1

declare dso_local i64 @match_part_last(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
