; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_add_spec_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_add_spec_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label_spec_entry = type { i8*, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: need regular expression\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: need a label\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: extraneous fields at end of line\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"^%s$\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: processing regular expression\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sebsd/%s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"<<none>>\00", align 1
@F_DONTLABEL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"%s: invalid mode string: %s\00", align 1
@S_IFBLK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c",-b\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c",-c\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c",-d\00", align 1
@S_IFIFO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c",-p\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c",-l\00", align 1
@S_IFSOCK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c",-s\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c",--\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_spec_line(i8* %0, i32 %1, %struct.label_spec_entry* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.label_spec_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.label_spec_entry* %2, %struct.label_spec_entry** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @strtok(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %11, align 8
  store i8* null, i8** %10, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %51 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %53 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %52, i32 0, i32 5
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @REG_EXTENDED, align 4
  %56 = load i32, i32* @REG_NOSUB, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @regcomp(i32* %53, i8* %54, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %48
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %64 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %63, i32 0, i32 5
  %65 = call i64 @regerror(i32 %62, i32* %64, i8* null, i64 0)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i8* @malloc(i64 %66)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %75 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %74, i32 0, i32 5
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @regerror(i32 %73, i32* %75, i8* %76, i64 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %81 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %79, i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %72, %48
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 8
  %90 = call i8* @strdup(i8* %89)
  %91 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %92 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %94 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %88
  br label %119

100:                                              ; preds = %85
  %101 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %102 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %101, i32 0, i32 1
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @asprintf(i8** %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %100
  %109 = load i8*, i8** %11, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* @F_DONTLABEL, align 4
  %114 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %115 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %108
  br label %119

119:                                              ; preds = %118, %99
  %120 = load i8*, i8** %10, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %188

122:                                              ; preds = %119
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = icmp ne i32 %124, 2
  br i1 %125, label %132, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 45
  br i1 %131, label %132, label %136

132:                                              ; preds = %126, %122
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %133, i8* %134)
  br label %136

136:                                              ; preds = %132, %126
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  switch i32 %140, label %183 [
    i32 98, label %141
    i32 99, label %147
    i32 100, label %153
    i32 112, label %159
    i32 108, label %165
    i32 115, label %171
    i32 45, label %177
  ]

141:                                              ; preds = %136
  %142 = load i32, i32* @S_IFBLK, align 4
  %143 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %144 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %146 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %145, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %146, align 8
  br label %187

147:                                              ; preds = %136
  %148 = load i32, i32* @S_IFCHR, align 4
  %149 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %150 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %152 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %151, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %152, align 8
  br label %187

153:                                              ; preds = %136
  %154 = load i32, i32* @S_IFDIR, align 4
  %155 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %156 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %158 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %157, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %158, align 8
  br label %187

159:                                              ; preds = %136
  %160 = load i32, i32* @S_IFIFO, align 4
  %161 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %162 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %164 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %163, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %164, align 8
  br label %187

165:                                              ; preds = %136
  %166 = load i32, i32* @S_IFLNK, align 4
  %167 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %168 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %170 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %169, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %170, align 8
  br label %187

171:                                              ; preds = %136
  %172 = load i32, i32* @S_IFSOCK, align 4
  %173 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %174 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  %175 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %176 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %175, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %176, align 8
  br label %187

177:                                              ; preds = %136
  %178 = load i32, i32* @S_IFREG, align 4
  %179 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %180 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %182 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %181, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %182, align 8
  br label %187

183:                                              ; preds = %136
  %184 = load i8*, i8** %5, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %184, i8* %185)
  br label %187

187:                                              ; preds = %183, %177, %171, %165, %159, %153, %147, %141
  br label %191

188:                                              ; preds = %119
  %189 = load %struct.label_spec_entry*, %struct.label_spec_entry** %7, align 8
  %190 = getelementptr inbounds %struct.label_spec_entry, %struct.label_spec_entry* %189, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8** %190, align 8
  br label %191

191:                                              ; preds = %188, %187
  ret void
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @regerror(i32, i32*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
