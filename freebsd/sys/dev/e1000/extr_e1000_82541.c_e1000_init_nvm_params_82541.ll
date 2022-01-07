; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_nvm_params_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_nvm_params_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i8* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_EECD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_nvm_params_82541\00", align 1
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_SIZE = common dso_local global i32 0, align 4
@E1000_EECD_TYPE = common dso_local global i32 0, align 4
@e1000_acquire_nvm_generic = common dso_local global i8* null, align 8
@e1000_release_nvm_generic = common dso_local global i8* null, align 8
@e1000_update_nvm_checksum_generic = common dso_local global i8* null, align 8
@e1000_valid_led_default_generic = common dso_local global i8* null, align 8
@e1000_validate_nvm_checksum_generic = common dso_local global i8* null, align 8
@e1000_write_nvm_spi = common dso_local global i32 0, align 4
@NVM_CFG = common dso_local global i32 0, align 4
@NVM_SIZE_MASK = common dso_local global i32 0, align 4
@NVM_SIZE_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT_82541 = common dso_local global i64 0, align 8
@e1000_write_nvm_microwire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_nvm_params_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_nvm_params_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_nvm_info* %8, %struct.e1000_nvm_info** %3, align 8
  %9 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = load i32, i32* @E1000_EECD, align 4
  %12 = call i32 @E1000_READ_REG(%struct.e1000_hw* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %47 [
    i32 129, label %17
    i32 128, label %24
    i32 131, label %32
    i32 130, label %39
  ]

17:                                               ; preds = %1
  %18 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %60

24:                                               ; preds = %1
  %25 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %26 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %1
  %33 = load i64, i64* @e1000_nvm_eeprom_microwire, align 8
  %34 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @E1000_EECD_SIZE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %60

39:                                               ; preds = %1
  %40 = load i64, i64* @e1000_nvm_eeprom_microwire, align 8
  %41 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @E1000_EECD_SIZE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %60

47:                                               ; preds = %1
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @E1000_EECD_TYPE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  br label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @e1000_nvm_eeprom_microwire, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %39, %32, %24, %17
  %61 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %146

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 16, i32 8
  %73 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %75, i32 0, i32 3
  store i32 1, i32* %76, align 4
  %77 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %77, i32 0, i32 4
  store i32 8, i32* %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 32, i32 8
  %85 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i8*, i8** @e1000_acquire_nvm_generic, align 8
  %88 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 6
  store i8* %87, i8** %90, align 8
  %91 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  store i64 (%struct.e1000_hw.0*, i32, i32, i32*)* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32*)* @e1000_read_nvm_spi to i64 (%struct.e1000_hw.0*, i32, i32, i32*)*), i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %93, align 8
  %94 = load i8*, i8** @e1000_release_nvm_generic, align 8
  %95 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i8* %94, i8** %97, align 8
  %98 = load i8*, i8** @e1000_update_nvm_checksum_generic, align 8
  %99 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** @e1000_valid_led_default_generic, align 8
  %103 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %104 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i8* %102, i8** %105, align 8
  %106 = load i8*, i8** @e1000_validate_nvm_checksum_generic, align 8
  %107 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load i32, i32* @e1000_write_nvm_spi, align 4
  %111 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %114, i32 0, i32 6
  store i32 64, i32* %115, align 8
  %116 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 5
  %119 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %118, align 8
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %121 = bitcast %struct.e1000_hw* %120 to %struct.e1000_hw.0*
  %122 = load i32, i32* @NVM_CFG, align 4
  %123 = call i64 %119(%struct.e1000_hw.0* %121, i32 %122, i32 1, i32* %6)
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %4, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %66
  br label %195

127:                                              ; preds = %66
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @NVM_SIZE_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @NVM_SIZE_SHIFT, align 4
  %132 = ashr i32 %130, %131
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %127
  %136 = load i64, i64* @NVM_WORD_SIZE_BASE_SHIFT_82541, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = shl i32 1, %141
  %143 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %144 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %135, %127
  br label %194

146:                                              ; preds = %60
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 8, i32 6
  %153 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %154 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %156 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %155, i32 0, i32 3
  store i32 50, i32* %156, align 4
  %157 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %158 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %157, i32 0, i32 4
  store i32 3, i32* %158, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 256, i32 64
  %165 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %166 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** @e1000_acquire_nvm_generic, align 8
  %168 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %169 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 6
  store i8* %167, i8** %170, align 8
  %171 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %172 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 5
  store i64 (%struct.e1000_hw.0*, i32, i32, i32*)* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32*)* @e1000_read_nvm_microwire to i64 (%struct.e1000_hw.0*, i32, i32, i32*)*), i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %173, align 8
  %174 = load i8*, i8** @e1000_release_nvm_generic, align 8
  %175 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %176 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 4
  store i8* %174, i8** %177, align 8
  %178 = load i8*, i8** @e1000_update_nvm_checksum_generic, align 8
  %179 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %180 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  store i8* %178, i8** %181, align 8
  %182 = load i8*, i8** @e1000_valid_led_default_generic, align 8
  %183 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %184 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  store i8* %182, i8** %185, align 8
  %186 = load i8*, i8** @e1000_validate_nvm_checksum_generic, align 8
  %187 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %188 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i8* %186, i8** %189, align 8
  %190 = load i32, i32* @e1000_write_nvm_microwire, align 4
  %191 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %192 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %191, i32 0, i32 7
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  br label %194

194:                                              ; preds = %146, %145
  br label %195

195:                                              ; preds = %194, %126
  %196 = load i64, i64* %4, align 8
  ret i64 %196
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_read_nvm_spi(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_read_nvm_microwire(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
