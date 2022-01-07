; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_capsicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_capsicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@ISCSIDHANDOFF = common dso_local global i64 0, align 8
@ISCSIDFAIL = common dso_local global i64 0, align 8
@ISCSISADD = common dso_local global i64 0, align 8
@ISCSISREMOVE = common dso_local global i64 0, align 8
@ISCSISMODIFY = common dso_local global i64 0, align 8
@CAP_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cap_rights_limit\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cap_ioctls_limit\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cap_enter\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Capsicum capability mode enabled\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Capsicum capability mode not supported\00", align 1
@ISCSIDCONNECT = common dso_local global i64 0, align 8
@ISCSIDRECEIVE = common dso_local global i64 0, align 8
@ISCSIDSEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*)* @capsicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capsicate(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x i64], align 16
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %6 = load i64, i64* @ISCSIDHANDOFF, align 8
  store i64 %6, i64* %5, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 1
  %8 = load i64, i64* @ISCSIDFAIL, align 8
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 1
  %10 = load i64, i64* @ISCSISADD, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 1
  %12 = load i64, i64* @ISCSISREMOVE, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 1
  %14 = load i64, i64* @ISCSISMODIFY, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32, i32* @CAP_IOCTL, align 4
  %16 = call i32 @cap_rights_init(i32* %3, i32 %15)
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @caph_rights_limit(i32 %19, i32* %3)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.connection*, %struct.connection** %2, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %30 = call i32 @nitems(i64* %29)
  %31 = call i64 @caph_ioctls_limit(i32 %27, i64* %28, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %24
  %36 = call i64 (...) @caph_enter()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = call i64 (...) @cap_sandboxed()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @log_debugx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %47

45:                                               ; preds = %40
  %46 = call i32 @log_warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43
  ret void
}

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i64 @caph_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i64 @cap_sandboxed(...) #1

declare dso_local i32 @log_debugx(i8*) #1

declare dso_local i32 @log_warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
