; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_print_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_print_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pflag = common dso_local global i64 0, align 8
@fromfile = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fetching %s-%s\00", align 1
@Nflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s-%s\0A\00", align 1
@load_opt_flag = common dso_local global i64 0, align 8
@Aflag = common dso_local global i64 0, align 8
@bflag = common dso_local global i64 0, align 8
@uflag = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @print_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_var(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pretty_guid(i32* %14, i8** %8)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* @pflag, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @fromfile, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %117

22:                                               ; preds = %19, %16
  %23 = load i64, i64* @fromfile, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i64, i64* @fromfile, align 8
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = call i32 @open(i64 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @fromfile, align 8
  %33 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = call i32* @malloc(i32 65536)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @read(i32 %41, i32* %42, i32 65536)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ule i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @close(i32 %49)
  br label %63

51:                                               ; preds = %22
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @efi_get_variable(i32 %53, i8* %54, i32** %6, i64* %7, i32* %5)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* @Nflag, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i64, i64* @load_opt_flag, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @Aflag, align 8
  %77 = load i64, i64* @bflag, align 8
  %78 = load i64, i64* @uflag, align 8
  %79 = call i32 @efi_print_load_option(i32* %74, i64 %75, i64 %76, i64 %77, i64 %78)
  br label %116

80:                                               ; preds = %70
  %81 = load i64, i64* @Aflag, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @asciidump(i32* %84, i64 %85)
  br label %115

87:                                               ; preds = %80
  %88 = load i64, i64* @uflag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @utf8dump(i32* %91, i64 %92)
  br label %114

94:                                               ; preds = %87
  %95 = load i64, i64* @bflag, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @bindump(i32* %98, i64 %99)
  br label %113

101:                                              ; preds = %94
  %102 = load i64, i64* @dflag, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @devpath_dump(i32* %105, i64 %106)
  br label %112

108:                                              ; preds = %101
  %109 = load i32*, i32** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @hexdump(i32* %109, i64 %110)
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %90
  br label %115

115:                                              ; preds = %114, %83
  br label %116

116:                                              ; preds = %115, %73
  br label %121

117:                                              ; preds = %19
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %116
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i32, i32* @Nflag, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  ret void
}

declare dso_local i32 @pretty_guid(i32*, i8**) #1

declare dso_local i32 @open(i64, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @efi_get_variable(i32, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @efi_print_load_option(i32*, i64, i64, i64, i64) #1

declare dso_local i32 @asciidump(i32*, i64) #1

declare dso_local i32 @utf8dump(i32*, i64) #1

declare dso_local i32 @bindump(i32*, i64) #1

declare dso_local i32 @devpath_dump(i32*, i64) #1

declare dso_local i32 @hexdump(i32*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
