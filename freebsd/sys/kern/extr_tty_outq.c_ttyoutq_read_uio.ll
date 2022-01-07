; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_outq.c_ttyoutq_read_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_outq.c_ttyoutq_read_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyoutq = type { i64, i64, %struct.ttyoutq_block* }
%struct.ttyoutq_block = type { i8* }
%struct.tty = type { i32 }
%struct.uio = type { i64 }

@TTYOUTQ_DATASIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyoutq_read_uio(%struct.ttyoutq* %0, %struct.tty* %1, %struct.uio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttyoutq*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttyoutq_block*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.ttyoutq* %0, %struct.ttyoutq** %5, align 8
  store %struct.tty* %1, %struct.tty** %6, align 8
  store %struct.uio* %2, %struct.uio** %7, align 8
  br label %15

15:                                               ; preds = %137, %3
  %16 = load %struct.uio*, %struct.uio** %7, align 8
  %17 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %138

20:                                               ; preds = %15
  %21 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %22 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %25 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %139

29:                                               ; preds = %20
  %30 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %31 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %30, i32 0, i32 2
  %32 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %31, align 8
  store %struct.ttyoutq_block* %32, %struct.ttyoutq_block** %9, align 8
  %33 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %9, align 8
  %34 = icmp eq %struct.ttyoutq_block* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %139

36:                                               ; preds = %29
  %37 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %38 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %41 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %44 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.uio*, %struct.uio** %7, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = call i64 @MIN(i64 %42, i64 %49)
  %51 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %52 = call i64 @MIN(i64 %50, i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %53, %54
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %36
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %62 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %59, %36
  %66 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %67 = call i32 @TTYOUTQ_REMOVE_HEAD(%struct.ttyoutq* %66)
  %68 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %69 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %71 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %77 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %84

78:                                               ; preds = %65
  %79 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %80 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %81 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.tty*, %struct.tty** %6, align 8
  %86 = call i32 @tty_unlock(%struct.tty* %85)
  %87 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %9, align 8
  %88 = getelementptr inbounds %struct.ttyoutq_block, %struct.ttyoutq_block* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.uio*, %struct.uio** %7, align 8
  %94 = call i32 @uiomove(i8* %91, i64 %92, %struct.uio* %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.tty*, %struct.tty** %6, align 8
  %96 = call i32 @tty_lock(%struct.tty* %95)
  %97 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %98 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %9, align 8
  %99 = call i32 @TTYOUTQ_RECYCLE(%struct.ttyoutq* %97, %struct.ttyoutq_block* %98)
  br label %132

100:                                              ; preds = %59
  %101 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %102 = sub i64 %101, 1
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %13, align 8
  %104 = alloca i8, i64 %102, align 16
  store i64 %102, i64* %14, align 8
  %105 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %9, align 8
  %106 = getelementptr inbounds %struct.ttyoutq_block, %struct.ttyoutq_block* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @memcpy(i8* %104, i8* %109, i64 %110)
  %112 = load i64, i64* %12, align 8
  %113 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %114 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.ttyoutq*, %struct.ttyoutq** %5, align 8
  %118 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %121 = icmp ult i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @MPASS(i32 %122)
  %124 = load %struct.tty*, %struct.tty** %6, align 8
  %125 = call i32 @tty_unlock(%struct.tty* %124)
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.uio*, %struct.uio** %7, align 8
  %128 = call i32 @uiomove(i8* %104, i64 %126, %struct.uio* %127)
  store i32 %128, i32* %8, align 4
  %129 = load %struct.tty*, %struct.tty** %6, align 8
  %130 = call i32 @tty_lock(%struct.tty* %129)
  %131 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %131)
  br label %132

132:                                              ; preds = %100, %84
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %4, align 4
  br label %139

137:                                              ; preds = %132
  br label %15

138:                                              ; preds = %15
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %135, %35, %28
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @TTYOUTQ_REMOVE_HEAD(%struct.ttyoutq*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @TTYOUTQ_RECYCLE(%struct.ttyoutq*, %struct.ttyoutq_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @MPASS(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
