; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_parse_optional.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_parse_optional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i64 }
%struct.pe_optional_header_32 = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"PE Optional Header\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"wrong PE Optional Header magic 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.executable*, i64, i32)* @parse_optional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_optional(%struct.executable* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.executable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pe_optional_header_32*, align 8
  store %struct.executable* %0, %struct.executable** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.executable*, %struct.executable** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @range_check(%struct.executable* %8, i64 %9, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.executable*, %struct.executable** %4, align 8
  %12 = getelementptr inbounds %struct.executable, %struct.executable* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %13, %14
  %16 = inttoptr i64 %15 to %struct.pe_optional_header_32*
  store %struct.pe_optional_header_32* %16, %struct.pe_optional_header_32** %7, align 8
  %17 = load %struct.pe_optional_header_32*, %struct.pe_optional_header_32** %7, align 8
  %18 = getelementptr inbounds %struct.pe_optional_header_32, %struct.pe_optional_header_32* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %3
  %21 = load %struct.executable*, %struct.executable** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  call void @parse_optional_32(%struct.executable* %21, i64 %22, i32 %23)
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.executable*, %struct.executable** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  call void @parse_optional_32_plus(%struct.executable* %25, i64 %26, i32 %27)
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.pe_optional_header_32*, %struct.pe_optional_header_32** %7, align 8
  %30 = getelementptr inbounds %struct.pe_optional_header_32, %struct.pe_optional_header_32* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %20, %24, %28
  ret void
}

declare dso_local i32 @range_check(%struct.executable*, i64, i32, i8*) #1

declare dso_local void @parse_optional_32(%struct.executable*, i64, i32) #1

declare dso_local void @parse_optional_32_plus(%struct.executable*, i64, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
