; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_subr.c_smbfs_fullpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_subr.c_smbfs_fullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbchain = type { i32 }
%struct.smb_vc = type { i32 }
%struct.smbnode = type { i8*, i32 }

@SMB_CS_NONE = common dso_local global i32 0, align 4
@SMB_DIALECT_LANMAN1_0 = common dso_local global i64 0, align 8
@SMB_CS_UPPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_fullpath(%struct.mbchain* %0, %struct.smb_vc* %1, %struct.smbnode* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbchain*, align 8
  %8 = alloca %struct.smb_vc*, align 8
  %9 = alloca %struct.smbnode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mbchain* %0, %struct.mbchain** %7, align 8
  store %struct.smb_vc* %1, %struct.smb_vc** %8, align 8
  store %struct.smbnode* %2, %struct.smbnode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @SMB_CS_NONE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %16 = call i64 @SMB_UNICODE_STRINGS(%struct.smb_vc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %20 = call i32 @mb_put_padbyte(%struct.mbchain* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %96

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %5
  %27 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %28 = call i64 @SMB_DIALECT(%struct.smb_vc* %27)
  %29 = load i64, i64* @SMB_DIALECT_LANMAN1_0, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @SMB_CS_UPPER, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %37 = icmp ne %struct.smbnode* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %40 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %41 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %42 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %45 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @smb_put_dmem(%struct.mbchain* %39, %struct.smb_vc* %40, i8* %43, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %96

53:                                               ; preds = %38
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %58 = call i64 @SMB_UNICODE_STRINGS(%struct.smb_vc* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %62 = call i32 @mb_put_uint16le(%struct.mbchain* %61, i8 signext 92)
  store i32 %62, i32* %13, align 4
  br label %66

63:                                               ; preds = %56
  %64 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %65 = call i32 @mb_put_uint8(%struct.mbchain* %64, i8 signext 92)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %96

71:                                               ; preds = %66
  %72 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %73 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @smb_put_dmem(%struct.mbchain* %72, %struct.smb_vc* %73, i8* %74, i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %96

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83, %35
  %85 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %86 = call i64 @SMB_UNICODE_STRINGS(%struct.smb_vc* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %90 = call i32 @mb_put_uint16le(%struct.mbchain* %89, i8 signext 0)
  store i32 %90, i32* %13, align 4
  br label %94

91:                                               ; preds = %84
  %92 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %93 = call i32 @mb_put_uint8(%struct.mbchain* %92, i8 signext 0)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %80, %69, %51, %23
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @SMB_UNICODE_STRINGS(%struct.smb_vc*) #1

declare dso_local i32 @mb_put_padbyte(%struct.mbchain*) #1

declare dso_local i64 @SMB_DIALECT(%struct.smb_vc*) #1

declare dso_local i32 @smb_put_dmem(%struct.mbchain*, %struct.smb_vc*, i8*, i32, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i8 signext) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
