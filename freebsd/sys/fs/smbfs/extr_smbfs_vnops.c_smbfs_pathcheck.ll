; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vnops.c_smbfs_pathcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vnops.c_smbfs_pathcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbmount = type { i32 }

@smbfs_pathcheck.badchars = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"*/:<>?\00", align 1
@smbfs_pathcheck.badchars83 = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" +|,[]=;\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@SMB_DIALECT_LANMAN2_0 = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbmount*, i8*, i32, i32)* @smbfs_pathcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_pathcheck(%struct.smbmount* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbmount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.smbmount* %0, %struct.smbmount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 92)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOENT, align 4
  store i32 %17, i32* %5, align 4
  br label %107

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @LOOKUP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %107

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.smbmount*, %struct.smbmount** %6, align 8
  %26 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SSTOVC(i32 %27)
  %29 = call i64 @SMB_DIALECT(i32 %28)
  %30 = load i64, i64* @SMB_DIALECT_LANMAN2_0, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 12
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %36, i32* %5, align 4
  br label %107

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 46)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %107

44:                                               ; preds = %37
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = icmp sgt i64 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %44
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %107

57:                                               ; preds = %48
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i8* @strchr(i8* %59, i8 signext 46)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %107

65:                                               ; preds = %57
  %66 = load i8*, i8** %7, align 8
  store i8* %66, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %80, %65
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load i8*, i8** @smbfs_pathcheck.badchars83, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i8* @strchr(i8* %72, i8 signext %74)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %107

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  br label %67

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %23
  %87 = load i8*, i8** %7, align 8
  store i8* %87, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %101, %86
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i8*, i8** @smbfs_pathcheck.badchars, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i8* @strchr(i8* %93, i8 signext %95)
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %107

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  br label %88

106:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %98, %77, %63, %55, %42, %35, %22, %16
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @SMB_DIALECT(i32) #1

declare dso_local i32 @SSTOVC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
