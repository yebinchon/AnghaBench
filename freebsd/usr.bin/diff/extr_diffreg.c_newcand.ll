; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_newcand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_newcand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cand = type { i32, i32, i32 }

@clen = common dso_local global i32 0, align 4
@clistlen = common dso_local global i32 0, align 4
@clist = common dso_local global %struct.cand* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @newcand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newcand(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cand*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @clen, align 4
  %9 = load i32, i32* @clistlen, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i32, i32* @clistlen, align 4
  %13 = mul nsw i32 %12, 11
  %14 = sdiv i32 %13, 10
  store i32 %14, i32* @clistlen, align 4
  %15 = load %struct.cand*, %struct.cand** @clist, align 8
  %16 = load i32, i32* @clistlen, align 4
  %17 = call %struct.cand* @xreallocarray(%struct.cand* %15, i32 %16, i32 12)
  store %struct.cand* %17, %struct.cand** @clist, align 8
  br label %18

18:                                               ; preds = %11, %3
  %19 = load %struct.cand*, %struct.cand** @clist, align 8
  %20 = load i32, i32* @clen, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cand, %struct.cand* %19, i64 %21
  store %struct.cand* %22, %struct.cand** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cand*, %struct.cand** %7, align 8
  %25 = getelementptr inbounds %struct.cand, %struct.cand* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cand*, %struct.cand** %7, align 8
  %28 = getelementptr inbounds %struct.cand, %struct.cand* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.cand*, %struct.cand** %7, align 8
  %31 = getelementptr inbounds %struct.cand, %struct.cand* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @clen, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @clen, align 4
  ret i32 %32
}

declare dso_local %struct.cand* @xreallocarray(%struct.cand*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
