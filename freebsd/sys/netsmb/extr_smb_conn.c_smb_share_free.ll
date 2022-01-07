; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32 }
%struct.smb_share = type { i32, i32, i32 }

@M_SMBCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_connobj*)* @smb_share_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_share_free(%struct.smb_connobj* %0) #0 {
  %2 = alloca %struct.smb_connobj*, align 8
  %3 = alloca %struct.smb_share*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %2, align 8
  %4 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %5 = call %struct.smb_share* @CPTOSS(%struct.smb_connobj* %4)
  store %struct.smb_share* %5, %struct.smb_share** %3, align 8
  %6 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %7 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SMB_STRFREE(i32 %8)
  %10 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %11 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SMB_STRFREE(i32 %12)
  %14 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %15 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %14, i32 0, i32 0
  %16 = call i32 @smb_sl_destroy(i32* %15)
  %17 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %18 = call i32 @SSTOCP(%struct.smb_share* %17)
  %19 = call i32 @smb_co_done(i32 %18)
  %20 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %21 = load i32, i32* @M_SMBCONN, align 4
  %22 = call i32 @free(%struct.smb_share* %20, i32 %21)
  ret void
}

declare dso_local %struct.smb_share* @CPTOSS(%struct.smb_connobj*) #1

declare dso_local i32 @SMB_STRFREE(i32) #1

declare dso_local i32 @smb_sl_destroy(i32*) #1

declare dso_local i32 @smb_co_done(i32) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @free(%struct.smb_share*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
