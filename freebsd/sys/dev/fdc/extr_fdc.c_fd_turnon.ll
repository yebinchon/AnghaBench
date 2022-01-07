; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_turnon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_turnon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bio = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@FD_MOTORWAIT = common dso_local global i32 0, align 4
@FD_MOTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fd_turnon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_turnon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fd_data*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fd_data*
  store %struct.fd_data* %7, %struct.fd_data** %3, align 8
  %8 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %9 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load i32, i32* @FD_MOTORWAIT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %17 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @FD_MOTOR, align 4
  %21 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %22 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %32, %1
  %26 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %27 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %26, i32 0, i32 1
  %28 = call %struct.bio* @bioq_takefirst(i32* %27)
  store %struct.bio* %28, %struct.bio** %4, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = icmp eq %struct.bio* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %39

32:                                               ; preds = %25
  %33 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %34 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = call i32 @bioq_disksort(i32* %36, %struct.bio* %37)
  store i32 1, i32* %5, align 4
  br label %25

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %44 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @wakeup(i32* %46)
  br label %48

48:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
