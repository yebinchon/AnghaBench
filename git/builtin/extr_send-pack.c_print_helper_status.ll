; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_send-pack.c_print_helper_status.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_send-pack.c_print_helper_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.ref = type { i32, i8*, i32, %struct.ref* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"up to date\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"non-fast forward\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fetch first\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"needs force\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"stale info\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"already exists\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @print_helper_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_helper_status(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  %6 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  br label %7

7:                                                ; preds = %54, %1
  %8 = load %struct.ref*, %struct.ref** %2, align 8
  %9 = icmp ne %struct.ref* %8, null
  br i1 %9, label %10, label %58

10:                                               ; preds = %7
  store i8* null, i8** %4, align 8
  %11 = load %struct.ref*, %struct.ref** %2, align 8
  %12 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %24 [
    i32 137, label %14
    i32 136, label %15
    i32 128, label %16
    i32 131, label %17
    i32 134, label %18
    i32 133, label %19
    i32 130, label %20
    i32 135, label %21
    i32 132, label %22
    i32 129, label %22
    i32 138, label %23
  ]

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %25

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %25

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %25

17:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %25

18:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %25

19:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %25

20:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %25

21:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %25

22:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %25

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %10, %23
  br label %54

25:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14
  %26 = call i32 @strbuf_reset(%struct.strbuf* %3)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.ref*, %struct.ref** %2, align 8
  %29 = getelementptr inbounds %struct.ref, %struct.ref* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %27, i32 %30)
  %32 = load %struct.ref*, %struct.ref** %2, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.ref*, %struct.ref** %2, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %36, %25
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext 32)
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @quote_two_c_style(%struct.strbuf* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* %45, i32 0)
  br label %47

47:                                               ; preds = %43, %40
  %48 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext 10)
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @write_or_die(i32 1, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %47, %24
  %55 = load %struct.ref*, %struct.ref** %2, align 8
  %56 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 3
  %57 = load %struct.ref*, %struct.ref** %56, align 8
  store %struct.ref* %57, %struct.ref** %2, align 8
  br label %7

58:                                               ; preds = %7
  %59 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @quote_two_c_style(%struct.strbuf*, i8*, i8*, i32) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
