; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xencons_priv*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xencons_priv*)* @xencons_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xencons_rx(%struct.xencons_priv* %0) #0 {
  %2 = alloca %struct.xencons_priv*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xencons_priv* %0, %struct.xencons_priv** %2, align 8
  %6 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %7 = call i32 @xencons_lock(%struct.xencons_priv* %6)
  br label %8

8:                                                ; preds = %40, %1
  %9 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %10 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.xencons_priv*, i8*, i32)*, i32 (%struct.xencons_priv*, i8*, i32)** %12, align 8
  %14 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %16 = call i32 %13(%struct.xencons_priv* %14, i8* %15, i32 16)
  store i32 %16, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %29 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %32 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = call i64 @RBUF_MASK(i32 %33)
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  store i8 %27, i8* %36, align 1
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %19

40:                                               ; preds = %19
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %43 = call i32 @xencons_unlock(%struct.xencons_priv* %42)
  ret void
}

declare dso_local i32 @xencons_lock(%struct.xencons_priv*) #1

declare dso_local i64 @RBUF_MASK(i32) #1

declare dso_local i32 @xencons_unlock(%struct.xencons_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
