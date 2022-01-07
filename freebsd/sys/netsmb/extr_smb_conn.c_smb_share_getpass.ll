; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_getpass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_getpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i8* }
%struct.smb_vc = type { i8* }

@smb_emptypass = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @smb_share_getpass(%struct.smb_share* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smb_share*, align 8
  %4 = alloca %struct.smb_vc*, align 8
  store %struct.smb_share* %0, %struct.smb_share** %3, align 8
  %5 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %6 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %11 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %15 = call %struct.smb_vc* @SSTOVC(%struct.smb_share* %14)
  store %struct.smb_vc* %15, %struct.smb_vc** %4, align 8
  %16 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %17 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %22 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %26

24:                                               ; preds = %13
  %25 = load i8*, i8** @smb_emptypass, align 8
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %24, %20, %9
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local %struct.smb_vc* @SSTOVC(%struct.smb_share*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
