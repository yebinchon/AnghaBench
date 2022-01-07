; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_getreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_getreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { %struct.cryptodesc* }
%struct.cryptodesc = type { %struct.cryptodesc* }

@cryptop_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@cryptodesc_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cryptop* @crypto_getreq(i32 %0) #0 {
  %2 = alloca %struct.cryptop*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cryptodesc*, align 8
  %5 = alloca %struct.cryptop*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @cryptop_zone, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @uma_zalloc(i32 %6, i32 %9)
  %11 = bitcast i8* %10 to %struct.cryptop*
  store %struct.cryptop* %11, %struct.cryptop** %5, align 8
  %12 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %13 = icmp ne %struct.cryptop* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i32, i32* @cryptodesc_zone, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @uma_zalloc(i32 %20, i32 %23)
  %25 = bitcast i8* %24 to %struct.cryptodesc*
  store %struct.cryptodesc* %25, %struct.cryptodesc** %4, align 8
  %26 = load %struct.cryptodesc*, %struct.cryptodesc** %4, align 8
  %27 = icmp eq %struct.cryptodesc* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %30 = call i32 @crypto_freereq(%struct.cryptop* %29)
  store %struct.cryptop* null, %struct.cryptop** %2, align 8
  br label %43

31:                                               ; preds = %19
  %32 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %33 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %32, i32 0, i32 0
  %34 = load %struct.cryptodesc*, %struct.cryptodesc** %33, align 8
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %4, align 8
  %36 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %35, i32 0, i32 0
  store %struct.cryptodesc* %34, %struct.cryptodesc** %36, align 8
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %4, align 8
  %38 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %39 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %38, i32 0, i32 0
  store %struct.cryptodesc* %37, %struct.cryptodesc** %39, align 8
  br label %15

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  store %struct.cryptop* %42, %struct.cryptop** %2, align 8
  br label %43

43:                                               ; preds = %41, %28
  %44 = load %struct.cryptop*, %struct.cryptop** %2, align 8
  ret %struct.cryptop* %44
}

declare dso_local i8* @uma_zalloc(i32, i32) #1

declare dso_local i32 @crypto_freereq(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
