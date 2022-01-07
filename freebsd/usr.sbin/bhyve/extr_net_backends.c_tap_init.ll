; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_tap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_tap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32, i64 }
%struct.tap_priv = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"TAP backend requires non-NULL callback\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"open of tap device %s failed\0A\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"tap device O_NONBLOCK failed\0A\00", align 1
@CAP_EVENT = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@EVF_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not register event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_backend*, i8*, i32*, i8*)* @tap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_init(%struct.net_backend* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_backend*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tap_priv*, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_backend* %0, %struct.net_backend** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %15 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.tap_priv*
  store %struct.tap_priv* %17, %struct.tap_priv** %10, align 8
  store i32 1, i32* %12, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @WPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %82

22:                                               ; preds = %4
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strlcat(i8* %25, i8* %26, i32 80)
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %29 = load i32, i32* @O_RDWR, align 4
  %30 = call i32 @open(i8* %28, i32 %29)
  %31 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %32 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %34 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %39 = call i32 @WPRINTF(i8* %38)
  br label %79

40:                                               ; preds = %22
  %41 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %42 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FIONBIO, align 4
  %45 = call i64 @ioctl(i32 %43, i32 %44, i32* %12)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @WPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %79

49:                                               ; preds = %40
  %50 = load i32, i32* @CAP_EVENT, align 4
  %51 = load i32, i32* @CAP_READ, align 4
  %52 = load i32, i32* @CAP_WRITE, align 4
  %53 = call i32 @cap_rights_init(i32* %13, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %55 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @caph_rights_limit(i32 %56, i32* %13)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EX_OSERR, align 4
  %61 = call i32 @errx(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %64 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @EVF_READ, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32* @mevent_add_disabled(i32 %65, i32 %66, i32* %67, i8* %68)
  %70 = load %struct.tap_priv*, %struct.tap_priv** %10, align 8
  %71 = getelementptr inbounds %struct.tap_priv, %struct.tap_priv* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  %72 = load %struct.tap_priv*, %struct.tap_priv** %10, align 8
  %73 = getelementptr inbounds %struct.tap_priv, %struct.tap_priv* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = call i32 @WPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %79

78:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %82

79:                                               ; preds = %76, %47, %37
  %80 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %81 = call i32 @tap_cleanup(%struct.net_backend* %80)
  store i32 -1, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %78, %20
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32) #1

declare dso_local i32 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @mevent_add_disabled(i32, i32, i32*, i8*) #1

declare dso_local i32 @tap_cleanup(%struct.net_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
