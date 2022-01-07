; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32, i32, i32, i32 }

@SMBR_ALLOCED = common dso_local global i32 0, align 4
@M_SMBRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_rq_done(%struct.smb_rq* %0) #0 {
  %2 = alloca %struct.smb_rq*, align 8
  store %struct.smb_rq* %0, %struct.smb_rq** %2, align 8
  %3 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %4 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %3, i32 0, i32 3
  %5 = call i32 @mb_done(i32* %4)
  %6 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %7 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %6, i32 0, i32 2
  %8 = call i32 @md_done(i32* %7)
  %9 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %10 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %9, i32 0, i32 1
  %11 = call i32 @smb_sl_destroy(i32* %10)
  %12 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %13 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SMBR_ALLOCED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %20 = load i32, i32* @M_SMBRQ, align 4
  %21 = call i32 @free(%struct.smb_rq* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @mb_done(i32*) #1

declare dso_local i32 @md_done(i32*) #1

declare dso_local i32 @smb_sl_destroy(i32*) #1

declare dso_local i32 @free(%struct.smb_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
