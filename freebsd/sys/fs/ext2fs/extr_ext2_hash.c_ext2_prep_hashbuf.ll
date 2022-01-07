; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_hash.c_ext2_prep_hashbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_hash.c_ext2_prep_hashbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32, i32)* @ext2_prep_hashbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_prep_hashbuf(i8* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %18, %20
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 16
  %24 = or i32 %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 24
  %27 = or i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %15, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %85, %37
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  store i32 %52, i32* %17, align 4
  br label %60

53:                                               ; preds = %43
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %53, %46
  %61 = load i32, i32* %16, align 4
  %62 = srem i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %67, 8
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %16, align 4
  %73 = srem i32 %72, 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %75, %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %39

88:                                               ; preds = %39
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %107, %99
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  br label %104

115:                                              ; preds = %104
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
