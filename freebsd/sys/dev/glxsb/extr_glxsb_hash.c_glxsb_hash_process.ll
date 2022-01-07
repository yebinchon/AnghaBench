; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_hash_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_hash_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_session = type { i32 }
%struct.cryptodesc = type { i32, i32, i32 }
%struct.cryptop = type { i32, i32 }

@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glxsb_hash_process(%struct.glxsb_session* %0, %struct.cryptodesc* %1, %struct.cryptop* %2) #0 {
  %4 = alloca %struct.glxsb_session*, align 8
  %5 = alloca %struct.cryptodesc*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  store %struct.glxsb_session* %0, %struct.glxsb_session** %4, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %5, align 8
  store %struct.cryptop* %2, %struct.cryptop** %6, align 8
  %8 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %9 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %16 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %17 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %20 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @glxsb_hash_key_setup(%struct.glxsb_session* %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %14, %3
  %24 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %25 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %26 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %27 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %30 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @glxsb_authcompute(%struct.glxsb_session* %24, %struct.cryptodesc* %25, i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @glxsb_hash_key_setup(%struct.glxsb_session*, i32, i32) #1

declare dso_local i32 @glxsb_authcompute(%struct.glxsb_session*, %struct.cryptodesc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
