; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i64, i64, i64, i64, i32*, i32*, i32*, i32* }
%struct.cdev = type { i32 }
%struct.spigen_transfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@SPI_COMMAND_INITIALIZER = common dso_local global %struct.spi_command zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.spigen_transfer*)* @spigen_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spigen_transfer(%struct.cdev* %0, %struct.spigen_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.spigen_transfer*, align 8
  %6 = alloca %struct.spi_command, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.spigen_transfer* %1, %struct.spigen_transfer** %5, align 8
  %9 = bitcast %struct.spi_command* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.spi_command* @SPI_COMMAND_INITIALIZER to i8*), i64 64, i1 false)
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %14 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %136

20:                                               ; preds = %2
  %21 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %22 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call i8* @malloc(i64 %24, i32 %25, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 7
  store i32* %28, i32** %29, align 8
  %30 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  %31 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %32 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %20
  %37 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %38 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = call i8* @malloc(i64 %40, i32 %41, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 6
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  br label %50

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 6
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 4
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %52 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %58 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = call i32 @copyin(i32 %54, i32* %56, i64 %60)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %50
  %67 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %68 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %74 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %80 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = call i32 @copyin(i32 %76, i32* %78, i64 %82)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %72, %66, %50
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @device_get_parent(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @SPIBUS_TRANSFER(i32 %91, i32 %92, %struct.spi_command* %6)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %101 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @copyout(i32* %99, i32 %103, i64 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %97
  %110 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %111 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.spigen_transfer*, %struct.spigen_transfer** %5, align 8
  %119 = getelementptr inbounds %struct.spigen_transfer, %struct.spigen_transfer* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @copyout(i32* %117, i32 %121, i64 %123)
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %115, %109, %97
  br label %126

126:                                              ; preds = %125, %94
  %127 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @M_DEVBUF, align 4
  %130 = call i32 @free(i32* %128, i32 %129)
  %131 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @M_DEVBUF, align 4
  %134 = call i32 @free(i32* %132, i32 %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %126, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @malloc(i64, i32, i32) #2

declare dso_local i32 @copyin(i32, i32*, i64) #2

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @copyout(i32*, i32, i64) #2

declare dso_local i32 @free(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
