; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_io_request_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_io_request_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, %struct.bio* }
%struct.TYPE_6__ = type { i32 }
%struct.bio = type { i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ips: io error, status= 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ips_io_request_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_io_request_finish(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  %6 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = call i64 @ips_read_request(%struct.bio* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %18 = call i32 @bus_dmamap_sync(i32 %13, i32 %16, i32 %17)
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %27 = call i32 @bus_dmamap_sync(i32 %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %10
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bus_dmamap_unload(i32 %31, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = call i64 @COMMAND_ERROR(%struct.TYPE_7__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load i32, i32* @BIO_ERROR, align 4
  %41 = load %struct.bio*, %struct.bio** %3, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @EIO, align 4
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %39, %28
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = call i32 @ips_insert_free_cmd(i32 %56, %struct.TYPE_7__* %57)
  %59 = load %struct.bio*, %struct.bio** %3, align 8
  %60 = call i32 @ipsd_finish(%struct.bio* %59)
  ret void
}

declare dso_local i64 @ips_read_request(%struct.bio*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i64 @COMMAND_ERROR(%struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ips_insert_free_cmd(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ipsd_finish(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
