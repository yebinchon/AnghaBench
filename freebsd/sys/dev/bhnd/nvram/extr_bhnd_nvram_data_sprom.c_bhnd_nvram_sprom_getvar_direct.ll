; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_nvram_vardefn = type { i32 }
%struct.TYPE_4__ = type { i64 }
%union.bhnd_nvram_sprom_storage = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error initializing opcode state: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i8*, i8*, i64*, i32)* @bhnd_nvram_sprom_getvar_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_getvar_direct(%struct.bhnd_nvram_io* %0, i8* %1, i8* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_nvram_io*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bhnd_nvram_vardefn*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca %union.bhnd_nvram_sprom_storage, align 4
  %19 = alloca i32, align 4
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call %struct.bhnd_nvram_vardefn* @bhnd_nvram_find_vardefn(i8* %20)
  store %struct.bhnd_nvram_vardefn* %21, %struct.bhnd_nvram_vardefn** %14, align 8
  %22 = icmp eq %struct.bhnd_nvram_vardefn* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %6, align 4
  br label %78

25:                                               ; preds = %5
  %26 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %14, align 8
  %27 = call i64 @bhnd_nvram_get_vardefn_id(%struct.bhnd_nvram_vardefn* %26)
  store i64 %27, i64* %15, align 8
  %28 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %29 = call i32 @bhnd_nvram_sprom_ident(%struct.bhnd_nvram_io* %28, i32** %12)
  store i32 %29, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %6, align 4
  br label %78

33:                                               ; preds = %25
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @bhnd_sprom_opcode_init(i32* %13, i32* %34)
  store i32 %35, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %6, align 4
  br label %78

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %55, %41
  %43 = call i32 @bhnd_sprom_opcode_next_var(i32* %13)
  store i32 %43, i32* %16, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = call i32 @bhnd_sprom_opcode_init_entry(i32* %13, %struct.TYPE_4__* %17)
  store i32 %46, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %6, align 4
  br label %78

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %42

56:                                               ; preds = %50
  %57 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %58 = call i32 @bhnd_nvram_sprom_read_var(i32* %13, %struct.TYPE_4__* %17, %struct.bhnd_nvram_io* %57, %union.bhnd_nvram_sprom_storage* %18, i32* %19)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %6, align 4
  br label %78

63:                                               ; preds = %56
  %64 = load i8*, i8** %9, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @bhnd_nvram_val_encode(i32* %19, i8* %64, i64* %65, i32 %66)
  store i32 %67, i32* %16, align 4
  %68 = call i32 @bhnd_nvram_val_release(i32* %19)
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %6, align 4
  br label %78

70:                                               ; preds = %42
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOENT, align 4
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %74, %63, %61, %48, %37, %31, %23
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.bhnd_nvram_vardefn* @bhnd_nvram_find_vardefn(i8*) #1

declare dso_local i64 @bhnd_nvram_get_vardefn_id(%struct.bhnd_nvram_vardefn*) #1

declare dso_local i32 @bhnd_nvram_sprom_ident(%struct.bhnd_nvram_io*, i32**) #1

declare dso_local i32 @bhnd_sprom_opcode_init(i32*, i32*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32) #1

declare dso_local i32 @bhnd_sprom_opcode_next_var(i32*) #1

declare dso_local i32 @bhnd_sprom_opcode_init_entry(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @bhnd_nvram_sprom_read_var(i32*, %struct.TYPE_4__*, %struct.bhnd_nvram_io*, %union.bhnd_nvram_sprom_storage*, i32*) #1

declare dso_local i32 @bhnd_nvram_val_encode(i32*, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
