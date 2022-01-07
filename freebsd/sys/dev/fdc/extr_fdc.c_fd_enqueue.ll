; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32, i32, i32, i32, %struct.fdc_data* }
%struct.fdc_data = type { i32, i32 }
%struct.bio = type { i32 }

@FD_MOTOR = common dso_local global i32 0, align 4
@FD_MOTORWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fd_data*, %struct.bio*)* @fd_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_enqueue(%struct.fd_data* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.fd_data*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.fdc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.fd_data* %0, %struct.fd_data** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %8 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %7, i32 0, i32 4
  %9 = load %struct.fdc_data*, %struct.fdc_data** %8, align 8
  store %struct.fdc_data* %9, %struct.fdc_data** %5, align 8
  %10 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %11 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %14 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %20 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %19, i32 0, i32 2
  %21 = call i32 @callout_stop(i32* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %24 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FD_MOTOR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %31 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %30, i32 0, i32 1
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = call i32 @bioq_disksort(i32* %31, %struct.bio* %32)
  %34 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %35 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %34, i32 0, i32 1
  %36 = call i32 @wakeup(i32* %35)
  br label %52

37:                                               ; preds = %22
  %38 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %39 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %38, i32 0, i32 1
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = call i32 @bioq_insert_tail(i32* %39, %struct.bio* %40)
  %42 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %43 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @FD_MOTORWAIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %50 = call i32 @fd_motor(%struct.fd_data* %49, i32 1)
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51, %29
  %53 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %54 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @fd_motor(%struct.fd_data*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
