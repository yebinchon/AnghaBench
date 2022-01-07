; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_pass_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_pass_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mprs_pass_thru = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@is_mps = common dso_local global i64 0, align 8
@MPS_PASS_THRU_DIRECTION_BOTH = common dso_local global i32 0, align 4
@MPR_PASS_THRU_DIRECTION_BOTH = common dso_local global i32 0, align 4
@MPS_PASS_THRU_DIRECTION_READ = common dso_local global i32 0, align 4
@MPR_PASS_THRU_DIRECTION_READ = common dso_local global i32 0, align 4
@MPS_PASS_THRU_DIRECTION_WRITE = common dso_local global i32 0, align 4
@MPR_PASS_THRU_DIRECTION_WRITE = common dso_local global i32 0, align 4
@MPS_PASS_THRU_DIRECTION_NONE = common dso_local global i32 0, align 4
@MPR_PASS_THRU_DIRECTION_NONE = common dso_local global i32 0, align 4
@MPTIOCTL_PASS_THRU = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_pass_command(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.mprs_pass_thru, align 8
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %23 = call i32 @bzero(%struct.mprs_pass_thru* %22, i32 80)
  %24 = load i8*, i8** %13, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 9
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 8
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 7
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 6
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %10
  %39 = load i8*, i8** %20, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i8*, i8** %17, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 5
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = load i64, i64* @is_mps, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i32, i32* @MPS_PASS_THRU_DIRECTION_BOTH, align 4
  %58 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  br label %62

59:                                               ; preds = %41
  %60 = load i32, i32* @MPR_PASS_THRU_DIRECTION_BOTH, align 4
  %61 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %113

63:                                               ; preds = %38, %10
  %64 = load i8*, i8** %18, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i8*, i8** %17, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load i64, i64* @is_mps, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @MPS_PASS_THRU_DIRECTION_READ, align 4
  %77 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  br label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @MPR_PASS_THRU_DIRECTION_READ, align 4
  %80 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  br label %112

82:                                               ; preds = %63
  %83 = load i8*, i8** %20, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i8*, i8** %19, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %20, align 8
  %91 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 2
  store i8* %90, i8** %91, align 8
  %92 = load i64, i64* @is_mps, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @MPS_PASS_THRU_DIRECTION_WRITE, align 4
  %96 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  br label %100

97:                                               ; preds = %85
  %98 = load i32, i32* @MPR_PASS_THRU_DIRECTION_WRITE, align 4
  %99 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %111

101:                                              ; preds = %82
  %102 = load i64, i64* @is_mps, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @MPS_PASS_THRU_DIRECTION_NONE, align 4
  %106 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  br label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @MPR_PASS_THRU_DIRECTION_NONE, align 4
  %109 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 1
  store i32 %108, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %100
  br label %112

112:                                              ; preds = %111, %81
  br label %113

113:                                              ; preds = %112, %62
  %114 = load i8*, i8** %21, align 8
  %115 = getelementptr inbounds %struct.mprs_pass_thru, %struct.mprs_pass_thru* %22, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @MPTIOCTL_PASS_THRU, align 4
  %118 = call i64 @ioctl(i32 %116, i32 %117, %struct.mprs_pass_thru* %22)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @errno, align 4
  store i32 %121, i32* %11, align 4
  br label %123

122:                                              ; preds = %113
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %122, %120
  %124 = load i32, i32* %11, align 4
  ret i32 %124
}

declare dso_local i32 @bzero(%struct.mprs_pass_thru*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mprs_pass_thru*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
