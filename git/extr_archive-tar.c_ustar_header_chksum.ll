; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_ustar_header_chksum.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_ustar_header_chksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustar_header = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustar_header*)* @ustar_header_chksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustar_header_chksum(%struct.ustar_header* %0) #0 {
  %2 = alloca %struct.ustar_header*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.ustar_header* %0, %struct.ustar_header** %2, align 8
  %5 = load %struct.ustar_header*, %struct.ustar_header** %2, align 8
  %6 = bitcast %struct.ustar_header* %5 to i8*
  store i8* %6, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %14, %1
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.ustar_header*, %struct.ustar_header** %2, align 8
  %10 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = icmp ult i8* %8, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  %17 = load i8, i8* %15, align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, 256
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %34, %21
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.ustar_header*, %struct.ustar_header** %2, align 8
  %31 = bitcast %struct.ustar_header* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  %33 = icmp ult i8* %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
