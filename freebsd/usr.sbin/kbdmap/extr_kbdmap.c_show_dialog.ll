; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_show_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_show_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i8* }

@__const.show_dialog.tmp_name = private unnamed_addr constant [20 x i8] c"/tmp/_kbd_lang.XXXX\00", align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not open temporary file \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"/usr/bin/dialog --clear --title \22Keyboard Menu\22 --menu \22%s\22 0 0 0\00", align 1
@menu = common dso_local global i32 0, align 4
@font = common dso_local global i8* null, align 8
@font_current = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \22\22\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" 2>\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@program = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"kbdmap\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to open temporary file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keymap**, i32)* @show_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dialog(%struct.keymap** %0, i32 %1) #0 {
  %3 = alloca %struct.keymap**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  store %struct.keymap** %0, %struct.keymap*** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = bitcast [20 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.show_dialog.tmp_name, i32 0, i32 0), i64 20, i1 false)
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %15 = call i32 @mkstemp(i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @exit(i32 1) #4
  unreachable

23:                                               ; preds = %2
  %24 = load i32, i32* @menu, align 4
  %25 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** @font, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i8*, i8** @font, align 8
  %30 = load i8*, i8** @font_current, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** @font, align 8
  %35 = call i32 @vidcontrol(i8* %34)
  br label %36

36:                                               ; preds = %33, %28, %23
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.keymap**, %struct.keymap*** %3, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.keymap*, %struct.keymap** %42, i64 %44
  %46 = load %struct.keymap*, %struct.keymap** %45, align 8
  %47 = getelementptr inbounds %struct.keymap, %struct.keymap* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %49, 6
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %37

58:                                               ; preds = %37
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %60 = call i64 @strlen(i8* %59)
  %61 = add nsw i64 %60, 3
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = add nsw i64 %70, 1
  %72 = call i64 @malloc(i64 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strcpy(i8* %74, i8* %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %97, %58
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strcat(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.keymap**, %struct.keymap*** %3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.keymap*, %struct.keymap** %85, i64 %87
  %89 = load %struct.keymap*, %struct.keymap** %88, align 8
  %90 = getelementptr inbounds %struct.keymap, %struct.keymap* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcat(i8* %84, i8* %91)
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @strcat(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @strcat(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %77

100:                                              ; preds = %77
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strcat(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %105 = call i32 @strcat(i8* %103, i8* %104)
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @system(i8* %106)
  %108 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %109 = call i32* @fopen(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %109, i32** %5, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %172

112:                                              ; preds = %100
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %114 = load i32*, i32** %5, align 8
  %115 = call i32* @fgets(i8* %113, i32 64, i32* %114)
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %157

117:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %153, %117
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %124 = load %struct.keymap**, %struct.keymap*** %3, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.keymap*, %struct.keymap** %124, i64 %126
  %128 = load %struct.keymap*, %struct.keymap** %127, align 8
  %129 = getelementptr inbounds %struct.keymap, %struct.keymap* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @strcmp(i8* %123, i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %152, label %133

133:                                              ; preds = %122
  %134 = load i8*, i8** @program, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = load %struct.keymap**, %struct.keymap*** %3, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.keymap*, %struct.keymap** %138, i64 %140
  %142 = load %struct.keymap*, %struct.keymap** %141, align 8
  %143 = call i32 @do_kbdcontrol(%struct.keymap* %142)
  br label %151

144:                                              ; preds = %133
  %145 = load %struct.keymap**, %struct.keymap*** %3, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.keymap*, %struct.keymap** %145, i64 %147
  %149 = load %struct.keymap*, %struct.keymap** %148, align 8
  %150 = call i32 @do_vidfont(%struct.keymap* %149)
  br label %151

151:                                              ; preds = %144, %137
  br label %156

152:                                              ; preds = %122
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %118

156:                                              ; preds = %151, %118
  br label %169

157:                                              ; preds = %112
  %158 = load i8*, i8** @font, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i8*, i8** @font, align 8
  %162 = load i8*, i8** @font_current, align 8
  %163 = call i64 @strcmp(i8* %161, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** @font_current, align 8
  %167 = call i32 @vidcontrol(i8* %166)
  br label %168

168:                                              ; preds = %165, %160, %157
  br label %169

169:                                              ; preds = %168, %156
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @fclose(i32* %170)
  br label %175

172:                                              ; preds = %100
  %173 = load i32, i32* @stderr, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %169
  %176 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %177 = call i32 @remove(i8* %176)
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @free(i8* %178)
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @free(i8* %180)
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @close(i32 %182)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @asprintf(i8**, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @vidcontrol(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @do_kbdcontrol(%struct.keymap*) #2

declare dso_local i32 @do_vidfont(%struct.keymap*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
