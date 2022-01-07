; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_yp_restricted_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_yp_restricted_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@domain_name = common dso_local global i8* null, align 8
@RESTRICTED_SERVERS = common dso_local global i32 0, align 4
@restricted_addrs = common dso_local global i32* null, align 8
@YPSET_NO = common dso_local global i32 0, align 4
@ypsetmode = common dso_local global i32 0, align 4
@yp_restricted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yp_restricted_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** @domain_name, align 8
  br label %11

11:                                               ; preds = %25, %9
  %12 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RESTRICTED_SERVERS, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %38

20:                                               ; preds = %18
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.hostent* @gethostbyname(i8* %21)
  store %struct.hostent* %22, %struct.hostent** %3, align 8
  %23 = icmp eq %struct.hostent* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %41

25:                                               ; preds = %20
  %26 = load %struct.hostent*, %struct.hostent** %3, align 8
  %27 = getelementptr inbounds %struct.hostent, %struct.hostent* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @restricted_addrs, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @bcopy(i32 %30, i32* %34, i32 4)
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %11

38:                                               ; preds = %18
  %39 = load i32, i32* @YPSET_NO, align 4
  store i32 %39, i32* @ypsetmode, align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* @yp_restricted, align 4
  br label %41

41:                                               ; preds = %38, %24, %8
  ret void
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
