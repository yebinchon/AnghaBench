; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_dump_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_dump_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_item = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@HIO_CONST = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s id=%u size=%u count=%u page=%s usage=%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" Const\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HIO_VARIABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" Variable\00", align 1
@HIO_RELATIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" Relative\00", align 1
@HIO_WRAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" Wrap\00", align 1
@HIO_NONLINEAR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" NonLinear\00", align 1
@HIO_NOPREF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" NoPref\00", align 1
@HIO_NULLSTATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c" NullState\00", align 1
@HIO_VOLATILE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c" Volatile\00", align 1
@HIO_BUFBYTES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" BufBytes\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c", logical range %d..%d\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c", physical range %d..%d\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c", unit=0x%02x exp=%d\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.hid_item*)* @hid_dump_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_dump_item(i8* %0, %struct.hid_item* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hid_item*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hid_item* %1, %struct.hid_item** %4, align 8
  %5 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %6 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HIO_CONST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @verbose, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %151

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @stdout, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %19 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %23 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %26 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %29 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HID_PAGE(i32 %30)
  %32 = call i8* @hid_usage_page(i32 %31)
  %33 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %34 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @hid_usage_in_page(i32 %35)
  %37 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %38 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HIO_CONST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %45 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %46 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @HIO_VARIABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %54 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @HIO_RELATIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %62 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HIO_WRAP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %69 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %70 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HIO_NONLINEAR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %77 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %78 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @HIO_NOPREF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %85 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %86 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HIO_NULLSTATE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %93 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %94 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @HIO_VOLATILE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %101 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %102 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @HIO_BUFBYTES, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %21, i32 %24, i32 %27, i8* %32, i8* %36, i8* %44, i8* %52, i8* %60, i8* %68, i8* %76, i8* %84, i8* %92, i8* %100, i8* %108)
  %110 = load i32, i32* @stdout, align 4
  %111 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %112 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %115 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %119 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %122 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %15
  %126 = load i32, i32* @stdout, align 4
  %127 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %128 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %131 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %125, %15
  %135 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %136 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i32, i32* @stdout, align 4
  %141 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %142 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %145 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %139, %134
  %149 = load i32, i32* @stdout, align 4
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %14
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @hid_usage_page(i32) #1

declare dso_local i32 @HID_PAGE(i32) #1

declare dso_local i8* @hid_usage_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
