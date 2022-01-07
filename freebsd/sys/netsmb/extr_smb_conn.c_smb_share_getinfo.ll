; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_getinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i8*, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smb_share_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SMB_INFO_SHARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_share*, %struct.smb_share_info*)* @smb_share_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_share_getinfo(%struct.smb_share* %0, %struct.smb_share_info* %1) #0 {
  %3 = alloca %struct.smb_share*, align 8
  %4 = alloca %struct.smb_share_info*, align 8
  store %struct.smb_share* %0, %struct.smb_share** %3, align 8
  store %struct.smb_share_info* %1, %struct.smb_share_info** %4, align 8
  %5 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %6 = call i32 @bzero(%struct.smb_share_info* %5, i32 36)
  %7 = load i32, i32* @SMB_INFO_SHARE, align 4
  %8 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %9 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %8, i32 0, i32 8
  store i32 %7, i32* %9, align 4
  %10 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %11 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %15 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %17 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %20 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %22 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %25 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %27 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %30 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %32 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %35 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %37 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %40 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %42 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %46 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.smb_share_info*, %struct.smb_share_info** %4, align 8
  %48 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smb_share*, %struct.smb_share** %3, align 8
  %51 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @snprintf(i32 %49, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %52)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.smb_share_info*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
