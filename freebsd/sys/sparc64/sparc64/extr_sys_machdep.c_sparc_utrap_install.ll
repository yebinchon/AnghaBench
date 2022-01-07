; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_sys_machdep.c_sparc_utrap_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_sys_machdep.c_sparc_utrap_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.md_utrap* }
%struct.md_utrap = type { i64* }
%struct.sparc_utrap_install_args = type { i32, i8*, i32, i64, i32*, i32* }
%struct.sparc_utrap_args = type { i32, i8*, i32, i64, i32*, i32* }

@UT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UTH_NOCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @sparc_utrap_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_utrap_install(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sparc_utrap_install_args, align 8
  %7 = alloca %struct.sparc_utrap_args, align 8
  %8 = alloca %struct.md_utrap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.md_utrap*, %struct.md_utrap** %15, align 8
  store %struct.md_utrap* %16, %struct.md_utrap** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @copyin(i8* %17, %struct.sparc_utrap_install_args* %6, i32 48)
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %144

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UT_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %6, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %26, %22
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %144

41:                                               ; preds = %35, %31
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %140, %41
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %143

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %6, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = bitcast %struct.sparc_utrap_args* %7 to %struct.sparc_utrap_install_args*
  %54 = call i32 @copyin(i8* %52, %struct.sparc_utrap_install_args* %53, i32 48)
  store i32 %54, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %144

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @UTH_NOCHANGE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @UT_MAX, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %63
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %3, align 4
  br label %144

74:                                               ; preds = %67, %58
  %75 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @suword(i32* %80, i64 0)
  store i32 %81, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %144

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %74
  %87 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.md_utrap*, %struct.md_utrap** %8, align 8
  %94 = icmp ne %struct.md_utrap* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.md_utrap*, %struct.md_utrap** %8, align 8
  %97 = getelementptr inbounds %struct.md_utrap, %struct.md_utrap* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  br label %105

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %95
  %106 = phi i64 [ %103, %95 ], [ 0, %104 ]
  %107 = call i32 @suword(i32* %92, i64 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %144

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %86
  %114 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @UTH_NOCHANGE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.md_utrap*, %struct.md_utrap** %8, align 8
  %120 = icmp eq %struct.md_utrap* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = call %struct.md_utrap* (...) @utrap_alloc()
  store %struct.md_utrap* %122, %struct.md_utrap** %8, align 8
  %123 = load %struct.md_utrap*, %struct.md_utrap** %8, align 8
  %124 = load %struct.thread*, %struct.thread** %4, align 8
  %125 = getelementptr inbounds %struct.thread, %struct.thread* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store %struct.md_utrap* %123, %struct.md_utrap** %128, align 8
  br label %129

129:                                              ; preds = %121, %118
  %130 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.md_utrap*, %struct.md_utrap** %8, align 8
  %133 = getelementptr inbounds %struct.md_utrap, %struct.md_utrap* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %7, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  store i64 %131, i64* %138, align 8
  br label %139

139:                                              ; preds = %129, %113
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %42

143:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %110, %83, %72, %56, %39, %20
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @copyin(i8*, %struct.sparc_utrap_install_args*, i32) #1

declare dso_local i32 @suword(i32*, i64) #1

declare dso_local %struct.md_utrap* @utrap_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
