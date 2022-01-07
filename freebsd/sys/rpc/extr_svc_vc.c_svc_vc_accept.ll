; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i32, i16, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i16 0, align 2
@curthread = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_vc_accept(%struct.socket* %0, %struct.socket** %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket**, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket** %1, %struct.socket*** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SO_ACCEPTCONN, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %6, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = call i32 @SOLISTEN_LOCK(%struct.socket* %17)
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 4
  %22 = sext i16 %21 to i32
  %23 = load i16, i16* @SS_NBIO, align 2
  %24 = sext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %7, align 2
  %27 = load i16, i16* @SS_NBIO, align 2
  %28 = sext i16 %27 to i32
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 4
  %32 = sext i16 %31 to i32
  %33 = or i32 %32, %28
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %30, align 4
  %35 = load %struct.socket*, %struct.socket** %3, align 8
  %36 = call i32 @solisten_dequeue(%struct.socket* %35, %struct.socket** %5, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i16, i16* %7, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* @SS_NBIO, align 2
  %40 = sext i16 %39 to i32
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 4
  %46 = sext i16 %45 to i32
  %47 = and i32 %46, %42
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %44, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %16
  br label %67

52:                                               ; preds = %16
  %53 = load i16, i16* %7, align 2
  %54 = sext i16 %53 to i32
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 1
  %57 = load i16, i16* %56, align 4
  %58 = sext i16 %57 to i32
  %59 = or i32 %58, %54
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %56, align 4
  %61 = load %struct.socket*, %struct.socket** %5, align 8
  %62 = load %struct.socket**, %struct.socket*** %4, align 8
  store %struct.socket* %61, %struct.socket** %62, align 8
  %63 = load %struct.socket*, %struct.socket** %3, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @KNOTE_UNLOCKED(i32* %65, i32 0)
  br label %67

67:                                               ; preds = %52, %51, %14
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @SOLISTEN_LOCK(%struct.socket*) #1

declare dso_local i32 @solisten_dequeue(%struct.socket*, %struct.socket**, i32) #1

declare dso_local i32 @KNOTE_UNLOCKED(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
