; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25l_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32*, i32, i32, i32, %struct.mx25l_softc*, i32, i32, i32, i32, i32 }
%struct.mx25l_flash_ident = type { i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@FL_ERASE_4K = common dso_local global i32 0, align 4
@FL_ERASE_32K = common dso_local global i32 0, align 4
@FL_ENABLE_4B_ADDR = common dso_local global i32 0, align 4
@CMD_ENTER_4B_MODE = common dso_local global i32 0, align 4
@FL_DISABLE_4B_ADDR = common dso_local global i32 0, align 4
@CMD_EXIT_4B_MODE = common dso_local global i32 0, align 4
@mx25l_open = common dso_local global i32 0, align 4
@mx25l_close = common dso_local global i32 0, align 4
@mx25l_strategy = common dso_local global i32 0, align 4
@mx25l_getattr = common dso_local global i32 0, align 4
@mx25l_ioctl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"flash/spi\00", align 1
@DFLTPHYS = common dso_local global i32 0, align 4
@MX25L_SECTORSIZE = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@mx25l_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"task: mx25l flash\00", align 1
@TSTATE_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"device type %s, size %dK in %d sectors of %dK, erase size %dK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mx25l_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25l_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mx25l_softc*, align 8
  %5 = alloca %struct.mx25l_flash_ident*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mx25l_softc* @device_get_softc(i32 %7)
  store %struct.mx25l_softc* %8, %struct.mx25l_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %19 = call i32 @M25PXX_LOCK_INIT(%struct.mx25l_softc* %18)
  %20 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %21 = call %struct.mx25l_flash_ident* @mx25l_get_device_ident(%struct.mx25l_softc* %20)
  store %struct.mx25l_flash_ident* %21, %struct.mx25l_flash_ident** %5, align 8
  %22 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %23 = icmp eq %struct.mx25l_flash_ident* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %223

26:                                               ; preds = %1
  %27 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %28 = call i32 @mx25l_wait_for_device_ready(%struct.mx25l_softc* %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %223

32:                                               ; preds = %26
  %33 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %34 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FL_ERASE_4K, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %45, i32 0, i32 1
  store i32 4096, i32* %46, align 4
  br label %64

47:                                               ; preds = %32
  %48 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %49 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FL_ERASE_32K, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %56 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %55, i32 0, i32 1
  store i32 32768, i32* %56, align 4
  br label %63

57:                                               ; preds = %47
  %58 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %59 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %54
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FL_ENABLE_4B_ADDR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %73 = load i32, i32* @CMD_ENTER_4B_MODE, align 4
  %74 = call i32 @mx25l_set_4b_mode(%struct.mx25l_softc* %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %223

78:                                               ; preds = %71
  br label %95

79:                                               ; preds = %64
  %80 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %81 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FL_DISABLE_4B_ADDR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %88 = load i32, i32* @CMD_EXIT_4B_MODE, align 4
  %89 = call i32 @mx25l_set_4b_mode(%struct.mx25l_softc* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %223

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %78
  %96 = call %struct.TYPE_3__* (...) @disk_alloc()
  %97 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %98 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %97, i32 0, i32 6
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load i32, i32* @mx25l_open, align 4
  %100 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %101 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %100, i32 0, i32 6
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 13
  store i32 %99, i32* %103, align 8
  %104 = load i32, i32* @mx25l_close, align 4
  %105 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %106 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %105, i32 0, i32 6
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 12
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* @mx25l_strategy, align 4
  %110 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %111 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %110, i32 0, i32 6
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 11
  store i32 %109, i32* %113, align 8
  %114 = load i32, i32* @mx25l_getattr, align 4
  %115 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %116 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %115, i32 0, i32 6
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 10
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* @mx25l_ioctl, align 4
  %120 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %121 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %120, i32 0, i32 6
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 9
  store i32 %119, i32* %123, align 8
  %124 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %125 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %124, i32 0, i32 6
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %127, align 8
  %128 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %129 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %130 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %129, i32 0, i32 6
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 8
  store %struct.mx25l_softc* %128, %struct.mx25l_softc** %132, align 8
  %133 = load i32, i32* @DFLTPHYS, align 4
  %134 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %135 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %134, i32 0, i32 6
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 7
  store i32 %133, i32* %137, align 8
  %138 = load i32, i32* @MX25L_SECTORSIZE, align 4
  %139 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %140 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %139, i32 0, i32 6
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 6
  store i32 %138, i32* %142, align 4
  %143 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %144 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %147 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %145, %148
  %150 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %151 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %150, i32 0, i32 6
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 8
  %154 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %155 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %158 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %157, i32 0, i32 6
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 4
  %161 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %162 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @device_get_unit(i32 %163)
  %165 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %166 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %165, i32 0, i32 6
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 5
  store i32 %164, i32* %168, align 8
  %169 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %170 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %169, i32 0, i32 6
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 4
  store i32* null, i32** %172, align 8
  %173 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %174 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %173, i32 0, i32 6
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %179 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @strlcpy(i32 %177, i32 %180, i32 4)
  %182 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %183 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %182, i32 0, i32 6
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = load i32, i32* @DISK_VERSION, align 4
  %186 = call i32 @disk_create(%struct.TYPE_3__* %184, i32 %185)
  %187 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %188 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %187, i32 0, i32 5
  %189 = call i32 @bioq_init(i32* %188)
  %190 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %191 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %192 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %191, i32 0, i32 4
  %193 = call i32 @kproc_create(i32* @mx25l_task, %struct.mx25l_softc* %190, i32* %192, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %194 = load i32, i32* @TSTATE_RUNNING, align 4
  %195 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %196 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %198 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %201 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %204 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %207 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %205, %208
  %210 = sdiv i32 %209, 1024
  %211 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %212 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mx25l_flash_ident*, %struct.mx25l_flash_ident** %5, align 8
  %215 = getelementptr inbounds %struct.mx25l_flash_ident, %struct.mx25l_flash_ident* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %216, 1024
  %218 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %219 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sdiv i32 %220, 1024
  %222 = call i32 @device_printf(i32 %199, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %202, i32 %210, i32 %213, i32 %217, i32 %221)
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %95, %91, %76, %30, %24
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.mx25l_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @M25PXX_LOCK_INIT(%struct.mx25l_softc*) #1

declare dso_local %struct.mx25l_flash_ident* @mx25l_get_device_ident(%struct.mx25l_softc*) #1

declare dso_local i32 @mx25l_wait_for_device_ready(%struct.mx25l_softc*) #1

declare dso_local i32 @mx25l_set_4b_mode(%struct.mx25l_softc*, i32) #1

declare dso_local %struct.TYPE_3__* @disk_alloc(...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @disk_create(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @kproc_create(i32*, %struct.mx25l_softc*, i32*, i32, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
