; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { i32 }
%struct.smb_connobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_vc_unlock(%struct.smb_vc* %0) #0 {
  %2 = alloca %struct.smb_vc*, align 8
  %3 = alloca %struct.smb_connobj*, align 8
  store %struct.smb_vc* %0, %struct.smb_vc** %2, align 8
  %4 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %5 = call %struct.smb_connobj* @VCTOCP(%struct.smb_vc* %4)
  store %struct.smb_connobj* %5, %struct.smb_connobj** %3, align 8
  %6 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %7 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %6, i32 0, i32 0
  %8 = call i32 @sx_xlock(i32* %7)
  %9 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %10 = call i32 @smb_co_unlock(%struct.smb_connobj* %9)
  %11 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %12 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %11, i32 0, i32 0
  %13 = call i32 @sx_unlock(i32* %12)
  ret void
}

declare dso_local %struct.smb_connobj* @VCTOCP(%struct.smb_vc*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @smb_co_unlock(%struct.smb_connobj*) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
