; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_sdater.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_sdater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.date = type { i32 }

@nswitch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.date* (i32, %struct.date*)* @sdater to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.date* @sdater(i32 %0, %struct.date* %1) #0 {
  %3 = alloca %struct.date*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.date*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.date* %1, %struct.date** %5, align 8
  %6 = load i32, i32* @nswitch, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.date*, %struct.date** %5, align 8
  %12 = call %struct.date* @gdate(i32 %10, %struct.date* %11)
  store %struct.date* %12, %struct.date** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.date*, %struct.date** %5, align 8
  %16 = call %struct.date* @jdate(i32 %14, %struct.date* %15)
  store %struct.date* %16, %struct.date** %3, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.date*, %struct.date** %3, align 8
  ret %struct.date* %18
}

declare dso_local %struct.date* @gdate(i32, %struct.date*) #1

declare dso_local %struct.date* @jdate(i32, %struct.date*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
