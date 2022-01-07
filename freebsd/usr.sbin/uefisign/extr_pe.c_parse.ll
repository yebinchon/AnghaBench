; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i64 }
%struct.mz_header = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"MZ header\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"MZ header not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse(%struct.executable* %0) #0 {
  %2 = alloca %struct.executable*, align 8
  %3 = alloca %struct.mz_header*, align 8
  store %struct.executable* %0, %struct.executable** %2, align 8
  %4 = load %struct.executable*, %struct.executable** %2, align 8
  %5 = call i32 @range_check(%struct.executable* %4, i32 0, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.executable*, %struct.executable** %2, align 8
  %7 = getelementptr inbounds %struct.executable, %struct.executable* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.mz_header*
  store %struct.mz_header* %9, %struct.mz_header** %3, align 8
  %10 = load %struct.mz_header*, %struct.mz_header** %3, align 8
  %11 = getelementptr inbounds %struct.mz_header, %struct.mz_header* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 77
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.mz_header*, %struct.mz_header** %3, align 8
  %19 = getelementptr inbounds %struct.mz_header, %struct.mz_header* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 90
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %1
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %17
  %28 = load %struct.executable*, %struct.executable** %2, align 8
  %29 = load %struct.mz_header*, %struct.mz_header** %3, align 8
  %30 = getelementptr inbounds %struct.mz_header, %struct.mz_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  call void @parse_pe(%struct.executable* %28, i32 %31)
  ret void
}

declare dso_local i32 @range_check(%struct.executable*, i32, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local void @parse_pe(%struct.executable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
