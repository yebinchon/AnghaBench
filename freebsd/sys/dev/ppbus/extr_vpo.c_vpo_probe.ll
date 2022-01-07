; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpo.c_vpo_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpo.c_vpo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpo_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Iomega VPI0 Parallel to SCSI interface\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Iomega Matchmaker Parallel to SCSI interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vpo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpo_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpo_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.vpo_data* @DEVTOSOFTC(i32 %9)
  store %struct.vpo_data* %10, %struct.vpo_data** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %13 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ppb_lock(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %18 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %17, i32 0, i32 1
  %19 = call i32 @vpoio_probe(i32 %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %23 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_set_desc(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %42

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %29 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %28, i32 0, i32 1
  %30 = call i32 @imm_probe(i32 %27, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.vpo_data*, %struct.vpo_data** %5, align 8
  %34 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_set_desc(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %41

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ppb_unlock(i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ppb_unlock(i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.vpo_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @vpoio_probe(i32, i32*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @imm_probe(i32, i32*) #1

declare dso_local i32 @ppb_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
