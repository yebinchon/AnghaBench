; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/controlelf/extr_controlelf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/controlelf/extr_controlelf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"elf_version error\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hle:\00", align 1
@long_opts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"no file(s) specified\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"error opening file %s\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"elf_begin failed: %s\00", align 1
@ELF_K_ELF = common dso_local global i64 0, align 8
@ELF_K_AR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"file '%s' is an archive\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"file '%s' is not an ELF file\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gelf_getehdr: %s\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@SUPPORTED_ENDIAN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"file endianness must match host\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @EV_CURRENT, align 4
  %16 = call i64 @elf_version(i32 %15)
  %17 = load i64, i64* @EV_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @errx(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @long_opts, align 4
  %27 = call i32 @getopt_long(i32 %24, i8** %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32* null)
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %36 [
    i32 108, label %31
    i32 101, label %33
    i32 104, label %35
  ]

31:                                               ; preds = %29
  %32 = call i32 (...) @print_features()
  store i32 1, i32* %14, align 4
  br label %38

33:                                               ; preds = %29
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %13, align 8
  store i32 1, i32* %11, align 4
  br label %38

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %29, %35
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %33, %31
  br label %23

39:                                               ; preds = %23
  %40 = load i64, i64* @optind, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i64, i64* @optind, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45
  store i8** %47, i8*** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @exit(i32 0) #3
  unreachable

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %165, %59
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %170

63:                                               ; preds = %60
  store i32* null, i32** %7, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @O_RDWR, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @O_RDONLY, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @open(i8* %66, i32 %74, i32 0)
  store i32 %75, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  store i32 1, i32* %12, align 4
  br label %153

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ELF_C_READ, align 4
  %85 = call i32* @elf_begin(i32 %83, i32 %84, i32* null)
  store i32* %85, i32** %7, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = call i32 @elf_errmsg(i32 -1)
  %89 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  store i32 1, i32* %12, align 4
  br label %153

90:                                               ; preds = %82
  %91 = load i32*, i32** %7, align 8
  %92 = call i64 @elf_kind(i32* %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* @ELF_K_ELF, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @ELF_K_AR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  br label %109

104:                                              ; preds = %95
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %104, %99
  store i32 1, i32* %12, align 4
  br label %153

110:                                              ; preds = %90
  %111 = load i32*, i32** %7, align 8
  %112 = call i32* @gelf_getehdr(i32* %111, %struct.TYPE_3__* %6)
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = call i32 @elf_errmsg(i32 -1)
  %116 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  store i32 1, i32* %12, align 4
  br label %153

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @EI_DATA, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SUPPORTED_ENDIAN, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %153

127:                                              ; preds = %117
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %127
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @print_file_features(i32* %131, i32 %133, i32 %134, i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %130
  store i32 1, i32* %12, align 4
  br label %153

141:                                              ; preds = %130
  br label %152

142:                                              ; preds = %127
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 @edit_file_features(i32* %143, i32 %145, i32 %146, i8* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %142
  store i32 1, i32* %12, align 4
  br label %153

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %141
  br label %153

153:                                              ; preds = %152, %150, %140, %125, %114, %109, %87, %77
  %154 = load i32*, i32** %7, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @elf_end(i32* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %10, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @close(i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %4, align 4
  %168 = load i8**, i8*** %5, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %5, align 8
  br label %60

170:                                              ; preds = %60
  %171 = load i32, i32* %12, align 4
  ret i32 %171
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @print_features(...) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @print_file_features(i32*, i32, i32, i8*) #1

declare dso_local i32 @edit_file_features(i32*, i32, i32, i8*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
