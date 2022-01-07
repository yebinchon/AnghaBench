; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_unmapcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_unmapcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command = type { i32, i32, i32, i32* }

@AMR_CMD_MAPPED = common dso_local global i32 0, align 4
@AMR_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@AMR_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_command*)* @amr_unmapcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_unmapcmd(%struct.amr_command* %0) #0 {
  %2 = alloca %struct.amr_command*, align 8
  %3 = alloca i32, align 4
  store %struct.amr_command* %0, %struct.amr_command** %2, align 8
  %4 = call i32 @debug_called(i32 3)
  %5 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %6 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @AMR_CMD_MAPPED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %13 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  %17 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %18 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AMR_CMD_DATAIN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %29 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AMR_CMD_DATAOUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %40 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %43 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @bus_dmamap_sync(i32 %41, i32 %44, i32 %45)
  %47 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %48 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %51 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bus_dmamap_unload(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %38, %11
  %55 = load i32, i32* @AMR_CMD_MAPPED, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %58 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %1
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
