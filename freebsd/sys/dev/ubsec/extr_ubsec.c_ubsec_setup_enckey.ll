; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_setup_enckey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_setup_enckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_session = type { i32* }

@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_session*, i32, i32)* @ubsec_setup_enckey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_setup_enckey(%struct.ubsec_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubsec_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubsec_session* %0, %struct.ubsec_session** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %13 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @bcopy(i32 %11, i32* %15, i32 8)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %19 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = call i32 @bcopy(i32 %17, i32* %21, i32 8)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %25 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = call i32 @bcopy(i32 %23, i32* %27, i32 8)
  br label %35

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %32 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bcopy(i32 %30, i32* %33, i32 24)
  br label %35

35:                                               ; preds = %29, %10
  %36 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %37 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SWAP32(i32 %40)
  %42 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %43 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SWAP32(i32 %46)
  %48 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %49 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SWAP32(i32 %52)
  %54 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %55 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SWAP32(i32 %58)
  %60 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %61 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SWAP32(i32 %64)
  %66 = load %struct.ubsec_session*, %struct.ubsec_session** %4, align 8
  %67 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SWAP32(i32 %70)
  ret void
}

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @SWAP32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
