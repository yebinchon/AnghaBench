; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_HdlcFcsBuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_HdlcFcsBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }

@fcstab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mbuf*)* @HdlcFcsBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HdlcFcsBuf(i32 %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = call i32 @m_length(%struct.mbuf* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = call i32* @MBUF_CTOP(%struct.mbuf* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %54, %2
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 8
  %25 = load i32*, i32** @fcstab, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %27, align 4
  %30 = xor i32 %26, %29
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %24, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 1
  %45 = load %struct.mbuf*, %struct.mbuf** %44, align 8
  store %struct.mbuf* %45, %struct.mbuf** %4, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = call i32* @MBUF_CTOP(%struct.mbuf* %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %7, align 8
  br label %54

54:                                               ; preds = %42, %39, %22
  br label %18

55:                                               ; preds = %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32* @MBUF_CTOP(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
