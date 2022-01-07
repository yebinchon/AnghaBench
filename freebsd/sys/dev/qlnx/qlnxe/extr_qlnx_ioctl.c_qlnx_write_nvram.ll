; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_write_nvram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_write_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"issue cmd = 0x%x data = %p \09\09 data_len = 0x%x ret = 0x%x exit\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"cmd = 0x%x data = %p \09\09 data_len = 0x%x resp = 0x%x ret = 0x%x exit\0A\00", align 1
@M_QLNXBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @qlnx_write_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_write_nvram(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @qlnx_zalloc(i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @copyin(i32* %28, i32* %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (%struct.TYPE_8__*, i8*, i32, i32*, i32, i32, ...) @QL_DPRINT9(%struct.TYPE_8__* %34, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %35, i32* %38, i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %21
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ecore_mcp_nvm_write(%struct.TYPE_9__* %48, i32 %49, i32 %52, i32* %53, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %46, %21
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (%struct.TYPE_8__*, i8*, i32, i32*, i32, i32, ...) @QL_DPRINT9(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32* %63, i32 %66, i32 %70, i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @M_QLNXBUF, align 4
  %75 = call i32 @free(i32* %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %58, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @qlnx_zalloc(i32) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @QL_DPRINT9(%struct.TYPE_8__*, i8*, i32, i32*, i32, i32, ...) #1

declare dso_local i32 @ecore_mcp_nvm_write(%struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
