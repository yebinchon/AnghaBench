; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/khelp/extr_h_ertt.c_ertt_uma_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/khelp/extr_h_ertt.c_ertt_uma_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ertt = type { i32 }
%struct.txseginfo = type { i32 }

@txsegi_lnk = common dso_local global i32 0, align 4
@txseginfo_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @ertt_uma_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ertt_uma_dtor(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ertt*, align 8
  %8 = alloca %struct.txseginfo*, align 8
  %9 = alloca %struct.txseginfo*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ertt*
  store %struct.ertt* %11, %struct.ertt** %7, align 8
  %12 = load %struct.ertt*, %struct.ertt** %7, align 8
  %13 = getelementptr inbounds %struct.ertt, %struct.ertt* %12, i32 0, i32 0
  %14 = call %struct.txseginfo* @TAILQ_FIRST(i32* %13)
  store %struct.txseginfo* %14, %struct.txseginfo** %9, align 8
  br label %15

15:                                               ; preds = %18, %3
  %16 = load %struct.txseginfo*, %struct.txseginfo** %9, align 8
  %17 = icmp ne %struct.txseginfo* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.txseginfo*, %struct.txseginfo** %9, align 8
  %20 = load i32, i32* @txsegi_lnk, align 4
  %21 = call %struct.txseginfo* @TAILQ_NEXT(%struct.txseginfo* %19, i32 %20)
  store %struct.txseginfo* %21, %struct.txseginfo** %8, align 8
  %22 = load i32, i32* @txseginfo_zone, align 4
  %23 = load %struct.txseginfo*, %struct.txseginfo** %9, align 8
  %24 = call i32 @uma_zfree(i32 %22, %struct.txseginfo* %23)
  %25 = load %struct.txseginfo*, %struct.txseginfo** %8, align 8
  store %struct.txseginfo* %25, %struct.txseginfo** %9, align 8
  br label %15

26:                                               ; preds = %15
  ret void
}

declare dso_local %struct.txseginfo* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.txseginfo* @TAILQ_NEXT(%struct.txseginfo*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.txseginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
