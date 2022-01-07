; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_sdp_trydestroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_sdp_trydestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_dev = type { i64, %struct.smb_vc*, %struct.smb_share* }
%struct.smb_vc = type { i32 }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i64, %struct.smb_vc*, %struct.smb_share* }

@.str = private unnamed_addr constant [29 x i8] c"No smb_dev upon device close\00", align 1
@M_NSMBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_trydestroy(%struct.smb_dev* %0) #0 {
  %2 = alloca %struct.smb_dev*, align 8
  %3 = alloca %struct.smb_vc*, align 8
  %4 = alloca %struct.smb_share*, align 8
  %5 = alloca %struct.smb_cred*, align 8
  store %struct.smb_dev* %0, %struct.smb_dev** %2, align 8
  %6 = call i32 (...) @SMB_LOCKASSERT()
  %7 = load %struct.smb_dev*, %struct.smb_dev** %2, align 8
  %8 = icmp ne %struct.smb_dev* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.smb_dev*, %struct.smb_dev** %2, align 8
  %13 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.smb_dev*, %struct.smb_dev** %2, align 8
  %19 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.smb_dev*, %struct.smb_dev** %2, align 8
  %23 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %69

27:                                               ; preds = %11
  %28 = load i32, i32* @M_NSMBDEV, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call %struct.smb_dev* @malloc(i32 24, i32 %28, i32 %29)
  %31 = bitcast %struct.smb_dev* %30 to %struct.smb_cred*
  store %struct.smb_cred* %31, %struct.smb_cred** %5, align 8
  %32 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %33 = bitcast %struct.smb_cred* %32 to %struct.smb_dev*
  %34 = load i32, i32* @curthread, align 4
  %35 = call i32 @smb_makescred(%struct.smb_dev* %33, i32 %34, i32* null)
  %36 = load %struct.smb_dev*, %struct.smb_dev** %2, align 8
  %37 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %36, i32 0, i32 2
  %38 = load %struct.smb_share*, %struct.smb_share** %37, align 8
  store %struct.smb_share* %38, %struct.smb_share** %4, align 8
  %39 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %40 = icmp ne %struct.smb_share* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %43 = call i32 @smb_share_lock(%struct.smb_share* %42)
  %44 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %45 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %46 = bitcast %struct.smb_cred* %45 to %struct.smb_dev*
  %47 = call i32 @smb_share_rele(%struct.smb_share* %44, %struct.smb_dev* %46)
  br label %48

48:                                               ; preds = %41, %27
  %49 = load %struct.smb_dev*, %struct.smb_dev** %2, align 8
  %50 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %49, i32 0, i32 1
  %51 = load %struct.smb_vc*, %struct.smb_vc** %50, align 8
  store %struct.smb_vc* %51, %struct.smb_vc** %3, align 8
  %52 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %53 = icmp ne %struct.smb_vc* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %56 = call i32 @smb_vc_lock(%struct.smb_vc* %55)
  %57 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %58 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %59 = bitcast %struct.smb_cred* %58 to %struct.smb_dev*
  %60 = call i32 @smb_vc_rele(%struct.smb_vc* %57, %struct.smb_dev* %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %63 = bitcast %struct.smb_cred* %62 to %struct.smb_dev*
  %64 = load i32, i32* @M_NSMBDEV, align 4
  %65 = call i32 @free(%struct.smb_dev* %63, i32 %64)
  %66 = load %struct.smb_dev*, %struct.smb_dev** %2, align 8
  %67 = load i32, i32* @M_NSMBDEV, align 4
  %68 = call i32 @free(%struct.smb_dev* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %26
  ret void
}

declare dso_local i32 @SMB_LOCKASSERT(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.smb_dev* @malloc(i32, i32, i32) #1

declare dso_local i32 @smb_makescred(%struct.smb_dev*, i32, i32*) #1

declare dso_local i32 @smb_share_lock(%struct.smb_share*) #1

declare dso_local i32 @smb_share_rele(%struct.smb_share*, %struct.smb_dev*) #1

declare dso_local i32 @smb_vc_lock(%struct.smb_vc*) #1

declare dso_local i32 @smb_vc_rele(%struct.smb_vc*, %struct.smb_dev*) #1

declare dso_local i32 @free(%struct.smb_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
