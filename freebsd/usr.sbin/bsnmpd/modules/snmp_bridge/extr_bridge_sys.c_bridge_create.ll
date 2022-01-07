; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i8*, i32 }

@sock = common dso_local global i32 0, align 4
@SIOCIFCREATE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"create bridge: ioctl(SIOCIFCREATE) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"create bridge: strdup() failed\00", align 1
@SIOCSIFNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"create bridge: ioctl(SIOCSIFNAME) failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_create(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifreq, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 @bzero(%struct.ifreq* %5, i32 16)
  %7 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlcpy(i32 %8, i8* %9, i32 4)
  %11 = load i32, i32* @sock, align 4
  %12 = load i32, i32* @SIOCIFCREATE, align 4
  %13 = call i64 @ioctl(i32 %11, i32 %12, %struct.ifreq* %5)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 (i32, i8*, ...) @syslog(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @strcmp(i8* %21, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %4, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = call i32 (i32, i8*, ...) @syslog(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %49

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @sock, align 4
  %38 = load i32, i32* @SIOCSIFNAME, align 4
  %39 = call i64 @ioctl(i32 %37, i32 %38, %struct.ifreq* %5)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i32, i8*, ...) @syslog(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %2, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %41, %31, %26, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
