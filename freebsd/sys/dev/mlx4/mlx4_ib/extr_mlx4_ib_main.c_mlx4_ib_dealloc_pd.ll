; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*)* @mlx4_ib_dealloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_dealloc_pd(%struct.ib_pd* %0) #0 {
  %2 = alloca %struct.ib_pd*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %2, align 8
  %3 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %4 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.TYPE_4__* @to_mdev(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %10 = call %struct.TYPE_3__* @to_mpd(%struct.ib_pd* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlx4_pd_free(i32 %8, i32 %12)
  %14 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %15 = call i32 @kfree(%struct.ib_pd* %14)
  ret i32 0
}

declare dso_local i32 @mlx4_pd_free(i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_mdev(i32) #1

declare dso_local %struct.TYPE_3__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @kfree(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
