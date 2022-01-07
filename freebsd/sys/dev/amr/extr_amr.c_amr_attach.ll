; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.amr_softc*, i32 }
%struct.TYPE_5__ = type { %struct.amr_softc* }

@.str = private unnamed_addr constant [16 x i8] c"queue init done\00", align 1
@amr_quartz_submit_command = common dso_local global i32 0, align 4
@amr_quartz_get_work = common dso_local global i32 0, align 4
@amr_quartz_poll_command = common dso_local global i32 0, align 4
@amr_quartz_poll_command1 = common dso_local global i32 0, align 4
@amr_std_submit_command = common dso_local global i32 0, align 4
@amr_std_get_work = common dso_local global i32 0, align 4
@amr_std_poll_command = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"controller query complete\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"amrp\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SCSI Passthrough Bus\00", align 1
@amr_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"amr%d\00", align 1
@linux_no_adapter = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"megadev0\00", align 1
@amr_startup = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"can't establish configuration hook\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"attach complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amr_attach(%struct.amr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32*, align 8
  store %struct.amr_softc* %0, %struct.amr_softc** %3, align 8
  %5 = call i32 @debug_called(i32 1)
  %6 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %7 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %6, i32 0, i32 13
  %8 = call i32 @amr_init_qhead(i32* %7)
  %9 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %10 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %9, i32 0, i32 12
  %11 = call i32 @amr_init_qhead(i32* %10)
  %12 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %13 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %12, i32 0, i32 11
  %14 = call i32 @TAILQ_INIT(i32* %13)
  %15 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %16 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %15, i32 0, i32 10
  %17 = call i32 @bioq_init(i32* %16)
  %18 = call i32 @debug(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %20 = call i64 @AMR_IS_QUARTZ(%struct.amr_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load i32, i32* @amr_quartz_submit_command, align 4
  %24 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %25 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @amr_quartz_get_work, align 4
  %27 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %28 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @amr_quartz_poll_command, align 4
  %30 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %31 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @amr_quartz_poll_command1, align 4
  %33 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %34 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  br label %47

35:                                               ; preds = %1
  %36 = load i32, i32* @amr_std_submit_command, align 4
  %37 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %38 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @amr_std_get_work, align 4
  %40 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %41 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @amr_std_poll_command, align 4
  %43 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %44 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %46 = call i32 @amr_std_attach_mailbox(%struct.amr_softc* %45)
  br label %47

47:                                               ; preds = %35, %22
  %48 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %49 = call i32 @amr_alloccmd_cluster(%struct.amr_softc* %48)
  %50 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %51 = call i64 @amr_query_controller(%struct.amr_softc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %150

55:                                               ; preds = %47
  %56 = call i32 @debug(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %65, %55
  %58 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %59 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %62 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %67 = call i32 @amr_alloccmd_cluster(%struct.amr_softc* %66)
  br label %57

68:                                               ; preds = %57
  %69 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %70 = call i32 @amr_init_sysctl(%struct.amr_softc* %69)
  %71 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %72 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @device_add_child(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %74, i32** %4, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %77 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %68
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %83 = call i32 @device_set_softc(i32* %81, %struct.amr_softc* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @device_set_desc(i32* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %87 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bus_generic_attach(i32 %88)
  br label %90

90:                                               ; preds = %80, %68
  %91 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %92 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @device_get_unit(i32 %93)
  %95 = load i32, i32* @UID_ROOT, align 4
  %96 = load i32, i32* @GID_OPERATOR, align 4
  %97 = load i32, i32* @S_IRUSR, align 4
  %98 = load i32, i32* @S_IWUSR, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %101 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @device_get_unit(i32 %102)
  %104 = call %struct.TYPE_5__* @make_dev(i32* @amr_cdevsw, i64 %94, i32 %95, i32 %96, i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %103)
  %105 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %106 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %105, i32 0, i32 4
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %106, align 8
  %107 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %108 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %109 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %108, i32 0, i32 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store %struct.amr_softc* %107, %struct.amr_softc** %111, align 8
  %112 = load i32, i32* @linux_no_adapter, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @linux_no_adapter, align 4
  %114 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %115 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @device_get_unit(i32 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %90
  %120 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %121 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %120, i32 0, i32 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = call i32 @make_dev_alias(%struct.TYPE_5__* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %119, %90
  %125 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %126 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %125, i32 0, i32 3
  %127 = call i32 @bzero(%struct.TYPE_6__* %126, i32 4)
  %128 = load i32, i32* @amr_startup, align 4
  %129 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %130 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 8
  %132 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %133 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %134 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store %struct.amr_softc* %132, %struct.amr_softc** %135, align 8
  %136 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %137 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %136, i32 0, i32 3
  %138 = call i64 @config_intrhook_establish(%struct.TYPE_6__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %124
  %141 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %142 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* @ENOMEM, align 4
  store i32 %145, i32* %2, align 4
  br label %150

146:                                              ; preds = %124
  %147 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %148 = call i32 @amr_describe_controller(%struct.amr_softc* %147)
  %149 = call i32 @debug(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %140, %53
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @amr_init_qhead(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i64 @AMR_IS_QUARTZ(%struct.amr_softc*) #1

declare dso_local i32 @amr_std_attach_mailbox(%struct.amr_softc*) #1

declare dso_local i32 @amr_alloccmd_cluster(%struct.amr_softc*) #1

declare dso_local i64 @amr_query_controller(%struct.amr_softc*) #1

declare dso_local i32 @amr_init_sysctl(%struct.amr_softc*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_softc(i32*, %struct.amr_softc*) #1

declare dso_local i32 @device_set_desc(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local %struct.TYPE_5__* @make_dev(i32*, i64, i32, i32, i32, i8*, i64) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @make_dev_alias(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_6__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @amr_describe_controller(%struct.amr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
