; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_vc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_connobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_vc_get(%struct.smb_vc* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca %struct.smb_vc*, align 8
  %4 = alloca %struct.smb_cred*, align 8
  %5 = alloca %struct.smb_connobj*, align 8
  %6 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %3, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %4, align 8
  %7 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %8 = call %struct.smb_connobj* @VCTOCP(%struct.smb_vc* %7)
  store %struct.smb_connobj* %8, %struct.smb_connobj** %5, align 8
  %9 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %10 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %9, i32 0, i32 0
  %11 = call i32 @sx_xlock(i32* %10)
  %12 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %13 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %14 = call i32 @smb_co_get(%struct.smb_connobj* %12, %struct.smb_cred* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %16 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %15, i32 0, i32 0
  %17 = call i32 @sx_unlock(i32* %16)
  %18 = load i32, i32* %6, align 4
  ret i32 %18
}

declare dso_local %struct.smb_connobj* @VCTOCP(%struct.smb_vc*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @smb_co_get(%struct.smb_connobj*, %struct.smb_cred*) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
