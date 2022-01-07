; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setptime2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setptime2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.timespec = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_t2rq = type { i32, i32, %struct.mbchain, %struct.mbchain }
%struct.mbchain = type { i32 }
%struct.smb_vc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SMB_TRANS2_SET_PATH_INFORMATION = common dso_local global i32 0, align 4
@SMB_INFO_STANDARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_setptime2(%struct.smbnode* %0, %struct.timespec* %1, %struct.timespec* %2, i32 %3, %struct.smb_cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smbnode*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smb_cred*, align 8
  %12 = alloca %struct.smb_t2rq*, align 8
  %13 = alloca %struct.smb_share*, align 8
  %14 = alloca %struct.smb_vc*, align 8
  %15 = alloca %struct.mbchain*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %7, align 8
  store %struct.timespec* %1, %struct.timespec** %8, align 8
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.smb_cred* %4, %struct.smb_cred** %11, align 8
  %20 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %21 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.smb_share*, %struct.smb_share** %23, align 8
  store %struct.smb_share* %24, %struct.smb_share** %13, align 8
  %25 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %26 = call %struct.smb_vc* @SSTOVC(%struct.smb_share* %25)
  store %struct.smb_vc* %26, %struct.smb_vc** %14, align 8
  %27 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %28 = call i32 @SSTOCP(%struct.smb_share* %27)
  %29 = load i32, i32* @SMB_TRANS2_SET_PATH_INFORMATION, align 4
  %30 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %31 = call i32 @smb_t2_alloc(i32 %28, i32 %29, %struct.smb_cred* %30, %struct.smb_t2rq** %12)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %6, align 4
  br label %116

36:                                               ; preds = %5
  %37 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %38 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %37, i32 0, i32 3
  store %struct.mbchain* %38, %struct.mbchain** %15, align 8
  %39 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %40 = call i32 @mb_init(%struct.mbchain* %39)
  %41 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %42 = load i32, i32* @SMB_INFO_STANDARD, align 4
  %43 = call i32 @mb_put_uint16le(%struct.mbchain* %41, i32 %42)
  %44 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %45 = call i32 @mb_put_uint32le(%struct.mbchain* %44, i32 0)
  %46 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %47 = load %struct.smb_vc*, %struct.smb_vc** %14, align 8
  %48 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %49 = call i32 @smbfs_fullpath(%struct.mbchain* %46, %struct.smb_vc* %47, %struct.smbnode* %48, i32* null, i32 0)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %54 = call i32 @smb_t2_done(%struct.smb_t2rq* %53)
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %6, align 4
  br label %116

56:                                               ; preds = %36
  %57 = load %struct.smb_vc*, %struct.smb_vc** %14, align 8
  %58 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %19, align 4
  %61 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %62 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %61, i32 0, i32 2
  store %struct.mbchain* %62, %struct.mbchain** %15, align 8
  %63 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %64 = call i32 @mb_init(%struct.mbchain* %63)
  %65 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %66 = call i32 @mb_put_uint32le(%struct.mbchain* %65, i32 0)
  %67 = load %struct.timespec*, %struct.timespec** %9, align 8
  %68 = icmp ne %struct.timespec* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load %struct.timespec*, %struct.timespec** %9, align 8
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @smb_time_unix2dos(%struct.timespec* %70, i32 %71, i32* %16, i32* %17, i32* null)
  br label %74

73:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @mb_put_uint16le(%struct.mbchain* %75, i32 %76)
  %78 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @mb_put_uint16le(%struct.mbchain* %78, i32 %79)
  %81 = load %struct.timespec*, %struct.timespec** %8, align 8
  %82 = icmp ne %struct.timespec* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.timespec*, %struct.timespec** %8, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @smb_time_unix2dos(%struct.timespec* %84, i32 %85, i32* %16, i32* %17, i32* null)
  br label %88

87:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @mb_put_uint16le(%struct.mbchain* %89, i32 %90)
  %92 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @mb_put_uint16le(%struct.mbchain* %92, i32 %93)
  %95 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %96 = call i32 @mb_put_uint32le(%struct.mbchain* %95, i32 0)
  %97 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %98 = call i32 @mb_put_uint32le(%struct.mbchain* %97, i32 0)
  %99 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @mb_put_uint16le(%struct.mbchain* %99, i32 %100)
  %102 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %103 = call i32 @mb_put_uint32le(%struct.mbchain* %102, i32 0)
  %104 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %105 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %104, i32 0, i32 0
  store i32 10, i32* %105, align 4
  %106 = load %struct.smb_vc*, %struct.smb_vc** %14, align 8
  %107 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %110 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %112 = call i32 @smb_t2_request(%struct.smb_t2rq* %111)
  store i32 %112, i32* %18, align 4
  %113 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %114 = call i32 @smb_t2_done(%struct.smb_t2rq* %113)
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %88, %52, %34
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local %struct.smb_vc* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_t2_alloc(i32, i32, %struct.smb_cred*, %struct.smb_t2rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @mb_init(%struct.mbchain*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, %struct.smb_vc*, %struct.smbnode*, i32*, i32) #1

declare dso_local i32 @smb_t2_done(%struct.smb_t2rq*) #1

declare dso_local i32 @smb_time_unix2dos(%struct.timespec*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @smb_t2_request(%struct.smb_t2rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
