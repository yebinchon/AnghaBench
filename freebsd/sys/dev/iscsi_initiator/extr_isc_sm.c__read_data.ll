; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c__read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c__read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%d] we lost something itt=%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*)* @_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_read_data(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %6 = call i32 @debug_called(i32 8)
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_19__* @i_search_hld(%struct.TYPE_20__* %7, i32 %13, i32 1)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = icmp ne %struct.TYPE_19__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = call i32 @scsi_decap(%struct.TYPE_20__* %18, %struct.TYPE_19__* %19, %struct.TYPE_19__* %20)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = call i32 @i_remove_hld(%struct.TYPE_20__* %24, %struct.TYPE_19__* %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = call i32 @pdu_free(i32 %29, %struct.TYPE_19__* %30)
  br label %32

32:                                               ; preds = %23, %17
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  %44 = call i32 @xdebug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %33, %32
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = call i32 @pdu_free(i32 %48, %struct.TYPE_19__* %49)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.TYPE_19__* @i_search_hld(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @scsi_decap(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @i_remove_hld(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @pdu_free(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @xdebug(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
