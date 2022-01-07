; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_reg_rpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_reg_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__, i8*, i8*, i32, i8*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SLI4_MBOX_COMMAND_REG_RPI = common dso_local global i32 0, align 4
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_REG_RPI_BUF_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_reg_rpi(i32* %0, i8* %1, i64 %2, i32 %3, i8* %4, i8* %5, %struct.TYPE_13__* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %19, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @ocs_memset(i8* %22, i32 0, i64 %23)
  %25 = load i32, i32* @SLI4_MBOX_COMMAND_REG_RPI, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SLI4_REG_RPI_BUF_LEN, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ocs_addr32_lo(i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ocs_addr32_hi(i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  ret i32 64
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
