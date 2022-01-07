; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_copyinstr_slow0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_copyinstr_slow0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copyinstr_arg0 = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @copyinstr_slow0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyinstr_slow0(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.copyinstr_arg0*, align 8
  %6 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.copyinstr_arg0*
  store %struct.copyinstr_arg0* %8, %struct.copyinstr_arg0** %5, align 8
  %9 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %10 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %15 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %20 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %13, %2
  %25 = phi i1 [ false, %13 ], [ false, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  br label %28

28:                                               ; preds = %71, %24
  %29 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %30 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %33 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %38 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %28
  %43 = phi i1 [ false, %28 ], [ %41, %36 ]
  br i1 %43, label %44, label %72

44:                                               ; preds = %42
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %47 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %6, align 1
  %52 = load i8, i8* %6, align 1
  %53 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %54 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  store i8 %52, i8* %56, align 1
  %57 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %58 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %62 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load i8, i8* %6, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %44
  %69 = load %struct.copyinstr_arg0*, %struct.copyinstr_arg0** %5, align 8
  %70 = getelementptr inbounds %struct.copyinstr_arg0, %struct.copyinstr_arg0* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %44
  br label %28

72:                                               ; preds = %42
  ret void
}

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
