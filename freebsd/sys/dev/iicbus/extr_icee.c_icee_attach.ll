; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icee_softc = type { i64, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.icee_softc* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"Missing config data, these cannot be zero: size %d type %d wr_sz %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"size: %d bytes, addressing: %d-bits\0A\00", align 1
@icee_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"icee%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"address_size\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Memory array address size in bits\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"device_size\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Memory array capacity in bytes\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"write_size\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Memory array page write size in bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @icee_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icee_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.icee_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.icee_softc* @device_get_softc(i32 %7)
  store %struct.icee_softc* %8, %struct.icee_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %11 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @iicbus_get_addr(i32 %12)
  %14 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %15 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %17 = call i32 @icee_init(%struct.icee_softc* %16)
  %18 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %19 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %1
  %23 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %24 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %29 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27, %22, %1
  %33 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %34 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %37 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %40 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %43 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, i64, i64, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %41, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %2, align 4
  br label %107

47:                                               ; preds = %27
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %53 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %56 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, i64, i64, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %57)
  br label %59

59:                                               ; preds = %50, %47
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_get_unit(i32 %60)
  %62 = load i32, i32* @UID_ROOT, align 4
  %63 = load i32, i32* @GID_WHEEL, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_get_unit(i32 %64)
  %66 = call %struct.TYPE_2__* @make_dev(i32* @icee_cdevsw, i32 %61, i32 %62, i32 %63, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %68 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %67, i32 0, i32 3
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %68, align 8
  %69 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %70 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = icmp eq %struct.TYPE_2__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %2, align 4
  br label %107

75:                                               ; preds = %59
  %76 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %77 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %78 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store %struct.icee_softc* %76, %struct.icee_softc** %80, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %81)
  store %struct.sysctl_ctx_list* %82, %struct.sysctl_ctx_list** %5, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_get_sysctl_tree(i32 %83)
  %85 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %84)
  store %struct.sysctl_oid_list* %85, %struct.sysctl_oid_list** %6, align 8
  %86 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %87 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLFLAG_RD, align 4
  %90 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %91 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %90, i32 0, i32 1
  %92 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %86, %struct.sysctl_oid_list* %87, i32 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %89, i64* %91, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %94 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLFLAG_RD, align 4
  %97 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %98 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %97, i32 0, i32 0
  %99 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %93, %struct.sysctl_oid_list* %94, i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %96, i64* %98, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %100 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLFLAG_RD, align 4
  %104 = load %struct.icee_softc*, %struct.icee_softc** %4, align 8
  %105 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %104, i32 0, i32 2
  %106 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %100, %struct.sysctl_oid_list* %101, i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %103, i64* %105, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %75, %73, %32
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.icee_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @icee_init(%struct.icee_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64, ...) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
