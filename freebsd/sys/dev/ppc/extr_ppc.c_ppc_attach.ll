; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i64, i64, i64, i64, i32, i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s chipset (%s) in %s mode%s\0A\00", align 1
@ppc_models = common dso_local global i32* null, align 8
@ppc_avms = common dso_local global i32* null, align 8
@ppc_modes = common dso_local global i32* null, align 8
@ppc_epp_protocol = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"FIFO with %d/%d/%d bytes threshold\0A\00", align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ppcintr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to register interrupt handler: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ppbus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ppc_data* @DEVTOSOFTC(i32 %6)
  store %struct.ppc_data* %7, %struct.ppc_data** %4, align 8
  %8 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %9 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %8, i32 0, i32 5
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %9, i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32*, i32** @ppc_models, align 8
  %16 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %17 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @ppc_avms, align 8
  %22 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %23 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @ppc_modes, align 8
  %28 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %29 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %34 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @PPB_IS_EPP(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load i8**, i8*** @ppc_epp_protocol, align 8
  %40 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %41 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i8* [ %44, %38 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %45 ]
  %48 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %26, i32 %32, i8* %47)
  %49 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %50 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %56 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %60 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %63 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %53, %46
  %67 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %68 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %74 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @INTR_TYPE_TTY, align 4
  %77 = load i32, i32* @INTR_MPSAFE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @ppcintr, align 4
  %80 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %81 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %82 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %81, i32 0, i32 6
  %83 = call i32 @bus_setup_intr(i32 %72, i64 %75, i32 %78, i32* null, i32 %79, %struct.ppc_data* %80, i32* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %71
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %91 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %90, i32 0, i32 5
  %92 = call i32 @mtx_destroy(i32* %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %104

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94, %66
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @device_add_child(i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %98 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %99 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %101 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @device_probe_and_attach(i32 %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %95, %86
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.ppc_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @PPB_IS_EPP(i64) #1

declare dso_local i32 @bus_setup_intr(i32, i64, i32, i32*, i32, %struct.ppc_data*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
