; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }

@SMB_COM_MOVE = common dso_local global i32 0, align 4
@SMB_TID_UNKNOWN = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_move(%struct.smbnode* %0, %struct.smbnode* %1, i8* %2, i32 %3, i32 %4, %struct.smb_cred* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smbnode*, align 8
  %9 = alloca %struct.smbnode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.smb_cred*, align 8
  %14 = alloca %struct.smb_rq*, align 8
  %15 = alloca %struct.smb_share*, align 8
  %16 = alloca %struct.mbchain*, align 8
  %17 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %8, align 8
  store %struct.smbnode* %1, %struct.smbnode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.smb_cred* %5, %struct.smb_cred** %13, align 8
  %18 = load %struct.smbnode*, %struct.smbnode** %8, align 8
  %19 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.smb_share*, %struct.smb_share** %21, align 8
  store %struct.smb_share* %22, %struct.smb_share** %15, align 8
  %23 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  %24 = call i32 @SSTOCP(%struct.smb_share* %23)
  %25 = load i32, i32* @SMB_COM_MOVE, align 4
  %26 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %27 = call i32 @smb_rq_alloc(i32 %24, i32 %25, %struct.smb_cred* %26, %struct.smb_rq** %14)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %7, align 4
  br label %84

32:                                               ; preds = %6
  %33 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %34 = call i32 @smb_rq_getrequest(%struct.smb_rq* %33, %struct.mbchain** %16)
  %35 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %36 = call i32 @smb_rq_wstart(%struct.smb_rq* %35)
  %37 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %38 = load i32, i32* @SMB_TID_UNKNOWN, align 4
  %39 = call i32 @mb_put_uint16le(%struct.mbchain* %37, i32 %38)
  %40 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %41 = call i32 @mb_put_uint16le(%struct.mbchain* %40, i32 32)
  %42 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @mb_put_uint16le(%struct.mbchain* %42, i32 %43)
  %45 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %46 = call i32 @smb_rq_wend(%struct.smb_rq* %45)
  %47 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %48 = call i32 @smb_rq_bstart(%struct.smb_rq* %47)
  %49 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %50 = load i32, i32* @SMB_DT_ASCII, align 4
  %51 = call i32 @mb_put_uint8(%struct.mbchain* %49, i32 %50)
  br label %52

52:                                               ; preds = %32
  %53 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %54 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  %55 = call i32 @SSTOVC(%struct.smb_share* %54)
  %56 = load %struct.smbnode*, %struct.smbnode** %8, align 8
  %57 = call i32 @smbfs_fullpath(%struct.mbchain* %53, i32 %55, %struct.smbnode* %56, i8* null, i32 0)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %80

61:                                               ; preds = %52
  %62 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %63 = load i32, i32* @SMB_DT_ASCII, align 4
  %64 = call i32 @mb_put_uint8(%struct.mbchain* %62, i32 %63)
  %65 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %66 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  %67 = call i32 @SSTOVC(%struct.smb_share* %66)
  %68 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @smbfs_fullpath(%struct.mbchain* %65, i32 %67, %struct.smbnode* %68, i8* %69, i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %80

75:                                               ; preds = %61
  %76 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %77 = call i32 @smb_rq_bend(%struct.smb_rq* %76)
  %78 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %79 = call i32 @smb_rq_simple(%struct.smb_rq* %78)
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %75, %74, %60
  %81 = load %struct.smb_rq*, %struct.smb_rq** %14, align 8
  %82 = call i32 @smb_rq_done(%struct.smb_rq* %81)
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %30
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, i32, %struct.smbnode*, i8*, i32) #1

declare dso_local i32 @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
