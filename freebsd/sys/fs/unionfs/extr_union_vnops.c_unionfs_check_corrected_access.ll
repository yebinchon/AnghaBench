; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_check_corrected_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_check_corrected_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vattr = type { i64, i32, i32 }
%struct.ucred = type { i64 }

@VEXEC = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vattr*, %struct.ucred*)* @unionfs_check_corrected_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_check_corrected_access(i32 %0, %struct.vattr* %1, %struct.ucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vattr*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vattr* %1, %struct.vattr** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.vattr*, %struct.vattr** %6, align 8
  %14 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.vattr*, %struct.vattr** %6, align 8
  %17 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.vattr*, %struct.vattr** %6, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ucred*, %struct.ucred** %7, align 8
  %23 = getelementptr inbounds %struct.ucred, %struct.ucred* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @VEXEC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @S_IXUSR, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @VREAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @S_IRUSR, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @VWRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @S_IWUSR, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @EACCES, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 0, %60 ], [ %62, %61 ]
  store i32 %64, i32* %4, align 4
  br label %146

65:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ucred*, %struct.ucred** %7, align 8
  %68 = call i64 @groupmember(i32 %66, %struct.ucred* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @VEXEC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @S_IXGRP, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @VREAD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @S_IRGRP, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @VWRITE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @S_IWGRP, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @EACCES, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 0, %103 ], [ %105, %104 ]
  store i32 %107, i32* %4, align 4
  br label %146

108:                                              ; preds = %65
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @VEXEC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @S_IXOTH, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @VREAD, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @S_IROTH, align 4
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @VWRITE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @S_IWOTH, align 4
  %133 = load i32, i32* %12, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @EACCES, align 4
  br label %144

144:                                              ; preds = %142, %141
  %145 = phi i32 [ 0, %141 ], [ %143, %142 ]
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %106, %63
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i64 @groupmember(i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
