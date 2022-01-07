; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_mpt_lookup_standalone_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_mpt_lookup_standalone_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_standalone_disk = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mpt_standalone_disk*, i32, i32*)* @mpt_lookup_standalone_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_lookup_standalone_disk(i8* %0, %struct.mpt_standalone_disk* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpt_standalone_disk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.mpt_standalone_disk* %1, %struct.mpt_standalone_disk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strtol(i8* %14, i8** %10, i32 0)
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %20, label %75

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i64 @strtol(i8* %22, i8** %10, i32 0)
  store i64 %23, i64* %12, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %20
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8
  %33 = icmp sgt i64 %32, 255
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = icmp sgt i64 %38, 255
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %34, %31, %28
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %5, align 4
  br label %113

42:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %48, i64 %50
  %52 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %57, i64 %59
  %61 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %113

68:                                               ; preds = %56, %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %43

72:                                               ; preds = %43
  %73 = load i32, i32* @ENOENT, align 4
  store i32 %73, i32* %5, align 4
  br label %113

74:                                               ; preds = %20
  br label %75

75:                                               ; preds = %74, %4
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 100
  br i1 %80, label %81, label %111

81:                                               ; preds = %75
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 97
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %94, i64 %96
  %98 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @strcmp(i8* %93, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %5, align 4
  br label %113

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %88

109:                                              ; preds = %88
  %110 = load i32, i32* @ENOENT, align 4
  store i32 %110, i32* %5, align 4
  br label %113

111:                                              ; preds = %81, %75
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %109, %102, %72, %65, %40
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
