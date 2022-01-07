; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bcm_nvram_iocfe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bcm_nvram_iocfe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_nvram_iocfe = type { i8*, i64, i32, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i8*, i64, i64 }
%struct.TYPE_6__ = type { i32, i8* }

@bhnd_nvram_iocfe_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cfe_open() failed: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cfe_getdevinfo() failed: %d\0A\00", align 1
@CFE_DEV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown device type: %d\0A\00", align 1
@IOCTL_NVRAM_GETINFO = common dso_local global i32 0, align 4
@CFE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid NVRAM layout (%d/%d)\0A\00", align 1
@CFE_ERR_INV_COMMAND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"IOCTL_NVRAM_GETINFO failed: %d\0A\00", align 1
@IOCTL_FLASH_GETINFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"IOCTL_FLASH_GETINFO failed %d\0A\00", align 1
@FLASH_FLAG_NOERASE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"invalid NVRAM layout (%#x/%#jx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_nvram_iocfe*, i8*)* @bcm_nvram_iocfe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_nvram_iocfe_init(%struct.bcm_nvram_iocfe* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_nvram_iocfe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  store %struct.bcm_nvram_iocfe* %0, %struct.bcm_nvram_iocfe** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %17 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* @bhnd_nvram_iocfe_ops, i32** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @cfe_open(i8* %22)
  %24 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %27 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %32 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %33 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i8*, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %190

38:                                               ; preds = %2
  %39 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %40 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @cfe_getdevinfo(i8* %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i8*, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %14, align 4
  br label %178

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @CFE_DEV_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %57 [
    i32 129, label %56
    i32 128, label %56
  ]

56:                                               ; preds = %51, %51
  br label %64

57:                                               ; preds = %51
  %58 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i8*, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %14, align 4
  br label %178

64:                                               ; preds = %56
  %65 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %66 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @IOCTL_NVRAM_GETINFO, align 4
  %69 = bitcast %struct.TYPE_5__* %6 to i8*
  %70 = call i32 @cfe_ioctl(i64 %67, i32 %68, i8* %69, i32 24, i32* %10, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @CFE_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ult i8* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78, %74
  %83 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i8*, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %85, i64 %87)
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %14, align 4
  br label %178

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %13, align 4
  br label %116

100:                                              ; preds = %64
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @CFE_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @CFE_ERR_INV_COMMAND, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i8*, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %14, align 4
  br label %178

115:                                              ; preds = %104, %100
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @CFE_ERR_INV_COMMAND, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %122 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @IOCTL_FLASH_GETINFO, align 4
  %125 = bitcast %struct.TYPE_6__* %15 to i8*
  %126 = call i32 @cfe_ioctl(i64 %123, i32 %124, i8* %125, i32 16, i32* %10, i32 0)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @CFE_OK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %120
  %131 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i8*, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %134)
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %14, align 4
  br label %178

137:                                              ; preds = %120
  store i8* null, i8** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FLASH_FLAG_NOERASE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %137, %116
  %148 = load i8*, i8** %12, align 8
  %149 = load i8*, i8** @SIZE_MAX, align 8
  %150 = icmp ugt i8* %148, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %147
  %152 = load i8*, i8** @SIZE_MAX, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = inttoptr i64 %156 to i8*
  %158 = load i8*, i8** %11, align 8
  %159 = icmp ult i8* %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %151, %147
  %161 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i8*, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %162, i64 %164)
  %166 = load i32, i32* @ENXIO, align 4
  store i32 %166, i32* %14, align 4
  br label %178

167:                                              ; preds = %151
  %168 = load i8*, i8** %11, align 8
  %169 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %170 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %173 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %176 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @CFE_OK, align 4
  store i32 %177, i32* %3, align 4
  br label %190

178:                                              ; preds = %160, %130, %108, %82, %57, %44
  %179 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %180 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp sge i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %4, align 8
  %185 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @cfe_close(i64 %186)
  br label %188

188:                                              ; preds = %183, %178
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %167, %30
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i64 @cfe_open(i8*) #1

declare dso_local i32 @IOCFE_LOG(%struct.bcm_nvram_iocfe*, i8*, i8*, ...) #1

declare dso_local i32 @cfe_getdevinfo(i8*) #1

declare dso_local i32 @cfe_ioctl(i64, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @cfe_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
