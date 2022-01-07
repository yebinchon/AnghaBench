; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_kldxref.c_read_kld.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_kldxref.c_read_kld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_metadata = type { i64, i64 }
%struct.elf_file = type { i32 }

@MAXMODNAME = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"elf_open(%s)\00", align 1
@EFT_KLD = common dso_local global i32 0, align 4
@EFT_KERNEL = common dso_local global i32 0, align 4
@MDT_SETNAME = common dso_local global i32 0, align 4
@MDT_MODULE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"error while reading %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @read_kld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_kld(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mod_metadata, align 8
  %7 = alloca %struct.elf_file, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i32, i32* @MAXMODNAME, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i64, i64* @verbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* @dflag, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %2
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* @verbose, align 8
  %34 = call i32 @ef_open(i8* %32, %struct.elf_file* %7, i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* @verbose, align 8
  %40 = call i32 @ef_obj_open(i8* %38, %struct.elf_file* %7, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i64, i64* @verbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @warnc(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %156

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %31
  %54 = call i32 @EF_GET_TYPE(%struct.elf_file* %7)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @EFT_KLD, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @EFT_KERNEL, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @EF_CLOSE(%struct.elf_file* %7)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %156

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @MDT_SETNAME, align 4
  %67 = call i32 @EF_LOOKUP_SET(%struct.elf_file* %7, i32 %66, i64* %11, i64* %12, i64* %13)
  %68 = call i32 @check(i32 %67)
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = mul i64 8, %70
  %72 = trunc i64 %71 to i32
  %73 = bitcast i8*** %8 to i8*
  %74 = call i32 @EF_SEG_READ_ENTRY_REL(%struct.elf_file* %7, i64 %69, i32 %72, i8* %73)
  %75 = call i32 @check(i32 %74)
  store i64 0, i64* %14, align 8
  br label %76

76:                                               ; preds = %102, %65
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load i8**, i8*** %8, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = call i32 @EF_SEG_READ_REL(%struct.elf_file* %7, i32 %85, i32 16, %struct.mod_metadata* %6)
  %87 = call i32 @check(i32 %86)
  %88 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %6, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = trunc i64 %20 to i32
  %92 = call i32 @EF_SEG_READ_STRING(%struct.elf_file* %7, i32 %90, i32 %91, i8* %22)
  %93 = call i32 @check(i32 %92)
  %94 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %6, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MDT_MODULE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %80
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @parse_entry(%struct.mod_metadata* %6, i8* %22, %struct.elf_file* %7, i8* %99)
  br label %105

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %14, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %14, align 8
  br label %76

105:                                              ; preds = %98, %76
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @warnc(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  br label %153

112:                                              ; preds = %105
  store i64 0, i64* %14, align 8
  br label %113

113:                                              ; preds = %139, %112
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %113
  %118 = load i8**, i8*** %8, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %121 to i32
  %123 = call i32 @EF_SEG_READ_REL(%struct.elf_file* %7, i32 %122, i32 16, %struct.mod_metadata* %6)
  %124 = call i32 @check(i32 %123)
  %125 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %6, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = trunc i64 %20 to i32
  %129 = call i32 @EF_SEG_READ_STRING(%struct.elf_file* %7, i32 %127, i32 %128, i8* %22)
  %130 = call i32 @check(i32 %129)
  %131 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %6, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MDT_MODULE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %117
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @parse_entry(%struct.mod_metadata* %6, i8* %22, %struct.elf_file* %7, i8* %136)
  br label %138

138:                                              ; preds = %135, %117
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %14, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %14, align 8
  br label %113

142:                                              ; preds = %113
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 @warnc(i32 %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i8**, i8*** %8, align 8
  %151 = call i32 @free(i8** %150)
  br label %152

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152, %108
  %154 = call i32 @EF_CLOSE(%struct.elf_file* %7)
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %156

156:                                              ; preds = %153, %62, %50
  %157 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @ef_open(i8*, %struct.elf_file*, i64) #2

declare dso_local i32 @ef_obj_open(i8*, %struct.elf_file*, i64) #2

declare dso_local i32 @warnc(i32, i8*, i8*) #2

declare dso_local i32 @EF_GET_TYPE(%struct.elf_file*) #2

declare dso_local i32 @EF_CLOSE(%struct.elf_file*) #2

declare dso_local i32 @check(i32) #2

declare dso_local i32 @EF_LOOKUP_SET(%struct.elf_file*, i32, i64*, i64*, i64*) #2

declare dso_local i32 @EF_SEG_READ_ENTRY_REL(%struct.elf_file*, i64, i32, i8*) #2

declare dso_local i32 @EF_SEG_READ_REL(%struct.elf_file*, i32, i32, %struct.mod_metadata*) #2

declare dso_local i32 @EF_SEG_READ_STRING(%struct.elf_file*, i32, i32, i8*) #2

declare dso_local i32 @parse_entry(%struct.mod_metadata*, i8*, %struct.elf_file*, i8*) #2

declare dso_local i32 @free(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
