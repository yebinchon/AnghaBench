; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_le_uuid_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_le_uuid_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid = type { i32*, i32, i32, i32, i32, i32 }

@_UUID_NODE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @le_uuid_enc(i8* %0, %struct.uuid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.uuid*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.uuid* %1, %struct.uuid** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.uuid*, %struct.uuid** %4, align 8
  %11 = getelementptr inbounds %struct.uuid, %struct.uuid* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @le32enc(i32* %9, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load %struct.uuid*, %struct.uuid** %4, align 8
  %17 = getelementptr inbounds %struct.uuid, %struct.uuid* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16enc(i32* %15, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 6
  %22 = load %struct.uuid*, %struct.uuid** %4, align 8
  %23 = getelementptr inbounds %struct.uuid, %struct.uuid* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16enc(i32* %21, i32 %24)
  %26 = load %struct.uuid*, %struct.uuid** %4, align 8
  %27 = getelementptr inbounds %struct.uuid, %struct.uuid* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.uuid*, %struct.uuid** %4, align 8
  %32 = getelementptr inbounds %struct.uuid, %struct.uuid* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 9
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %53, %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @_UUID_NODE_LEN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.uuid*, %struct.uuid** %4, align 8
  %42 = getelementptr inbounds %struct.uuid, %struct.uuid* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 10, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %47, i32* %52, align 4
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %36

56:                                               ; preds = %36
  ret void
}

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
