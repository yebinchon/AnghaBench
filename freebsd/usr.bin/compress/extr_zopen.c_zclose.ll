; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_zclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_zclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_zstate = type { i32 }

@zmode = common dso_local global i8 0, align 1
@ent = common dso_local global i64 0, align 8
@fp = common dso_local global i32 0, align 4
@out_count = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zclose(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.s_zstate*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.s_zstate*
  store %struct.s_zstate* %7, %struct.s_zstate** %4, align 8
  %8 = load i8, i8* @zmode, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 119
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %13 = load i64, i64* @ent, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @output(%struct.s_zstate* %12, i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @fp, align 4
  %19 = call i64 @fclose(i32 %18)
  %20 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %21 = call i32 @free(%struct.s_zstate* %20)
  store i32 -1, i32* %2, align 4
  br label %44

22:                                               ; preds = %11
  %23 = load i32, i32* @out_count, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @out_count, align 4
  %25 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %26 = call i32 @output(%struct.s_zstate* %25, i32 -1)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @fp, align 4
  %30 = call i64 @fclose(i32 %29)
  %31 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %32 = call i32 @free(%struct.s_zstate* %31)
  store i32 -1, i32* %2, align 4
  br label %44

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* @fp, align 4
  %36 = call i64 @fclose(i32 %35)
  %37 = load i64, i64* @EOF, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 -1, i32 0
  store i32 %40, i32* %5, align 4
  %41 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %42 = call i32 @free(%struct.s_zstate* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %34, %28, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @output(%struct.s_zstate*, i32) #1

declare dso_local i64 @fclose(i32) #1

declare dso_local i32 @free(%struct.s_zstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
