; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@sbc_ids = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SoundBlaster 1.0 (not supported)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SoundBlaster 2.0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ESS 488\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SoundBlaster Pro\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"SoundBlaster 16\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ESS 688\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ESS 1688\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @isa_get_logicalid(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @isa_get_vendorid(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 16777216
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 16814853
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %92

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_parent(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @sbc_ids, align 4
  %29 = call i32 @ISA_PNP_PROBE(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %92

30:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_IOPORT, align 4
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %31, i32 %32, i32* %7, i32 16, i32 %33)
  store %struct.resource* %34, %struct.resource** %9, align 8
  %35 = load %struct.resource*, %struct.resource** %9, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %84

38:                                               ; preds = %30
  %39 = load %struct.resource*, %struct.resource** %9, align 8
  %40 = call i64 @sb_reset_dsp(%struct.resource* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %78

43:                                               ; preds = %38
  %44 = load %struct.resource*, %struct.resource** %9, align 8
  %45 = call i32 @sb_identify_board(%struct.resource* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %78

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 3840
  %52 = ashr i32 %51, 8
  switch i32 %52, label %70 [
    i32 1, label %53
    i32 2, label %56
    i32 3, label %57
    i32 4, label %63
    i32 5, label %64
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_set_desc(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %70

56:                                               ; preds = %49
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %70

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 61440
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)
  store i8* %62, i8** %4, align 8
  br label %70

63:                                               ; preds = %49
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %70

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 8
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %49, %64, %63, %57, %56, %53
  %71 = load i8*, i8** %4, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @device_set_desc(i32 %74, i8* %75)
  br label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77, %48, %42
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SYS_RES_IOPORT, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.resource*, %struct.resource** %9, align 8
  %83 = call i32 @bus_release_resource(i32 %79, i32 %80, i32 %81, %struct.resource* %82)
  br label %84

84:                                               ; preds = %78, %37
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @ENXIO, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ 0, %87 ], [ %89, %88 ]
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %24, %22
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @isa_get_logicalid(i32) #1

declare dso_local i32 @isa_get_vendorid(i32) #1

declare dso_local i32 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i64 @sb_reset_dsp(%struct.resource*) #1

declare dso_local i32 @sb_identify_board(%struct.resource*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
