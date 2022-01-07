; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_setprd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_setprd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ata_dbdma_dmaload_args = type { i32, i64, %struct.ata_dbdma_channel* }
%struct.ata_dbdma_channel = type { i32, i32, i32 }

@DBDMA_ALWAYS = common dso_local global i32 0, align 4
@DBDMA_NEVER = common dso_local global i32 0, align 4
@DBDMA_OUTPUT_MORE = common dso_local global i32 0, align 4
@DBDMA_OUTPUT_LAST = common dso_local global i32 0, align 4
@DBDMA_INPUT_MORE = common dso_local global i32 0, align 4
@DBDMA_INPUT_LAST = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@DBDMA_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @ata_dbdma_setprd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dbdma_setprd(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_dbdma_dmaload_args*, align 8
  %10 = alloca %struct.ata_dbdma_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ata_dbdma_dmaload_args*
  store %struct.ata_dbdma_dmaload_args* %16, %struct.ata_dbdma_dmaload_args** %9, align 8
  %17 = load %struct.ata_dbdma_dmaload_args*, %struct.ata_dbdma_dmaload_args** %9, align 8
  %18 = getelementptr inbounds %struct.ata_dbdma_dmaload_args, %struct.ata_dbdma_dmaload_args* %17, i32 0, i32 2
  %19 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %18, align 8
  store %struct.ata_dbdma_channel* %19, %struct.ata_dbdma_channel** %10, align 8
  %20 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %21 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %20, i32 0, i32 1
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %24 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 255, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %103, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %106

35:                                               ; preds = %31
  %36 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %37 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DBDMA_ALWAYS, align 4
  store i32 %41, i32* %11, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @DBDMA_NEVER, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.ata_dbdma_dmaload_args*, %struct.ata_dbdma_dmaload_args** %9, align 8
  %46 = getelementptr inbounds %struct.ata_dbdma_dmaload_args, %struct.ata_dbdma_dmaload_args* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @DBDMA_OUTPUT_MORE, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @DBDMA_OUTPUT_LAST, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %12, align 4
  br label %71

60:                                               ; preds = %44
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @DBDMA_INPUT_MORE, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @DBDMA_INPUT_LAST, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %58
  %72 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %73 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %76 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DBDMA_NEVER, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @DBDMA_NEVER, align 4
  %95 = call i32 @dbdma_insert_command(i32 %74, i32 %77, i32 %79, i32 0, i32 %85, i32 %91, i32 %92, i32 %93, i32 %94, i32 0)
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @DBDMA_ALWAYS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %71
  %100 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %101 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %71
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %31

106:                                              ; preds = %31
  %107 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %108 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 255
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %113 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %116 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dbdma_insert_branch(i32 %114, i32 %117, i32 0)
  %119 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %120 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %111, %106
  %122 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %123 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %126 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = call i32 @dbdma_insert_stop(i32 %124, i32 %127)
  %130 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %131 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @dbdma_insert_nop(i32 %132, i32 %133)
  %135 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %136 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %139 = call i32 @dbdma_sync_commands(i32 %137, i32 %138)
  %140 = load %struct.ata_dbdma_channel*, %struct.ata_dbdma_channel** %10, align 8
  %141 = getelementptr inbounds %struct.ata_dbdma_channel, %struct.ata_dbdma_channel* %140, i32 0, i32 1
  %142 = call i32 @mtx_unlock(i32* %141)
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.ata_dbdma_dmaload_args*, %struct.ata_dbdma_dmaload_args** %9, align 8
  %145 = getelementptr inbounds %struct.ata_dbdma_dmaload_args, %struct.ata_dbdma_dmaload_args* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @dbdma_insert_command(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbdma_insert_branch(i32, i32, i32) #1

declare dso_local i32 @dbdma_insert_stop(i32, i32) #1

declare dso_local i32 @dbdma_insert_nop(i32, i32) #1

declare dso_local i32 @dbdma_sync_commands(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
