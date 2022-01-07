; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_vc2spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_vc2spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbioc_ossn = type { i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32* }
%struct.smb_vcspec = type { i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no local charset ?\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SMBVOPT_PRIVATE = common dso_local global i32 0, align 4
@SMBV_PRIVATE = common dso_local global i32 0, align 4
@SMBVOPT_SINGLESHARE = common dso_local global i32 0, align 4
@SMBV_SINGLESHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbioc_ossn*, %struct.smb_vcspec*)* @smb_usr_vc2spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_usr_vc2spec(%struct.smbioc_ossn* %0, %struct.smb_vcspec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbioc_ossn*, align 8
  %5 = alloca %struct.smb_vcspec*, align 8
  %6 = alloca i32, align 4
  store %struct.smbioc_ossn* %0, %struct.smbioc_ossn** %4, align 8
  store %struct.smb_vcspec* %1, %struct.smb_vcspec** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %8 = call i32 @bzero(%struct.smb_vcspec* %7, i32 72)
  %9 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %10 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %9, i32 0, i32 14
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %145

15:                                               ; preds = %2
  %16 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %17 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 @SMBERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %145

25:                                               ; preds = %15
  %26 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %27 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %26, i32 0, i32 14
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %30 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @smb_memdupin(i32* %28, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %35 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %34, i32 0, i32 12
  store i32* %33, i32** %35, align 8
  %36 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %37 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %36, i32 0, i32 12
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %3, align 4
  br label %145

42:                                               ; preds = %25
  %43 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %44 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %43, i32 0, i32 12
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %49 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %48, i32 0, i32 12
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %52 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @smb_memdupin(i32* %50, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %57 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %56, i32 0, i32 11
  store i32* %55, i32** %57, align 8
  %58 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %59 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %58, i32 0, i32 11
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %64 = call i32 @smb_usr_vcspec_free(%struct.smb_vcspec* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %3, align 4
  br label %145

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %69 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %72 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %74 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %77 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %79 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %82 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %84 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %87 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %86, i32 0, i32 0
  store i64* %85, i64** %87, align 8
  %88 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %89 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %92 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %94 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %97 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %99 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %102 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %104 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %107 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %109 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %112 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %111, i32 0, i32 1
  store i64* %110, i64** %112, align 8
  %113 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %114 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %117 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %119 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SMBVOPT_PRIVATE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %67
  %125 = load i32, i32* @SMBV_PRIVATE, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %67
  %129 = load %struct.smbioc_ossn*, %struct.smbioc_ossn** %4, align 8
  %130 = getelementptr inbounds %struct.smbioc_ossn, %struct.smbioc_ossn* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SMBVOPT_SINGLESHARE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @SMBV_PRIVATE, align 4
  %137 = load i32, i32* @SMBV_SINGLESHARE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %135, %128
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.smb_vcspec*, %struct.smb_vcspec** %5, align 8
  %144 = getelementptr inbounds %struct.smb_vcspec, %struct.smb_vcspec* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %62, %40, %22, %13
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @bzero(%struct.smb_vcspec*, i32) #1

declare dso_local i32 @SMBERROR(i8*) #1

declare dso_local i8* @smb_memdupin(i32*, i32) #1

declare dso_local i32 @smb_usr_vcspec_free(%struct.smb_vcspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
