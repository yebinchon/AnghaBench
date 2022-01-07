; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_nextframe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_nextframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_frame = type { i64, i32 }
%struct.thread = type { i32 }
%struct.trapframe = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NORMAL = common dso_local global i32 0, align 4
@PMAP_TRM_MIN_ADDRESS = common dso_local global i32 0, align 4
@setidt_disp = common dso_local global i32 0, align 4
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"calltrap\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fork_trampoline\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Xatpic_intr\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Xapic_isr\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Xlcall_syscall\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Xint0x80_syscall\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dblfault_handler\00", align 1
@DOUBLE_FAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Xtimerint\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Xxen_intr_upcall\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Xcpustop\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Xrendezvous\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Xipi_intr_bitmap_handler\00", align 1
@common_tssp = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [52 x i8] c"--- trap 0x17, eip = %#r, esp = %#r, ebp = %#r ---\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"--- kthread start\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"--- trap %#r\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"--- syscall\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"--- interrupt\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"The moon has moved again.\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c", eip = %#r, esp = %#r, ebp = %#r ---\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i386_frame**, i64*, %struct.thread*)* @db_nextframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_nextframe(%struct.i386_frame** %0, i64* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.i386_frame**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.i386_frame** %0, %struct.i386_frame*** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %15 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  %16 = load %struct.i386_frame*, %struct.i386_frame** %15, align 8
  %17 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %16, i32 0, i32 1
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @db_get_value(i32 %18, i32 4, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  %21 = load %struct.i386_frame*, %struct.i386_frame** %20, align 8
  %22 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %21, i32 0, i32 0
  %23 = ptrtoint i64* %22 to i32
  %24 = call i32 @db_get_value(i32 %23, i32 4, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @NORMAL, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PMAP_TRM_MIN_ADDRESS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @setidt_disp, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* @DB_STGY_ANY, align 4
  %35 = call i32 @db_search_symbol(i32 %33, i32 %34, i32* %12)
  store i32 %35, i32* %13, align 4
  br label %41

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @DB_STGY_ANY, align 4
  %40 = call i32 @db_search_symbol(i32 %38, i32 %39, i32* %12)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @db_symbol_values(i32 %42, i8** %14, i32* null)
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %107

46:                                               ; preds = %41
  %47 = load i8*, i8** %14, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %14, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  store i32 128, i32* %8, align 4
  br label %106

55:                                               ; preds = %50
  %56 = load i8*, i8** %14, align 8
  %57 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %14, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55
  store i32 130, i32* %8, align 4
  br label %105

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %14, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  store i32 129, i32* %8, align 4
  br label %104

73:                                               ; preds = %68
  %74 = load i8*, i8** %14, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @DOUBLE_FAULT, align 4
  store i32 %78, i32* %8, align 4
  br label %103

79:                                               ; preds = %73
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %14, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79
  store i32 130, i32* %8, align 4
  br label %102

88:                                               ; preds = %83
  %89 = load i8*, i8** %14, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %14, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %14, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92, %88
  store i32 130, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %96
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %77
  br label %104

104:                                              ; preds = %103, %72
  br label %105

105:                                              ; preds = %104, %63
  br label %106

106:                                              ; preds = %105, %54
  br label %107

107:                                              ; preds = %106, %41
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @NORMAL, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64*, i64** %5, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.i386_frame*
  %118 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  store %struct.i386_frame* %117, %struct.i386_frame** %118, align 8
  br label %212

119:                                              ; preds = %107
  %120 = load i8*, i8** %14, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  %123 = load %struct.i386_frame*, %struct.i386_frame** %122, align 8
  %124 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %123, i32 0, i32 0
  %125 = call i32 @db_print_stack_entry(i8* %120, i32 0, i32 0, i32 0, i32 %121, i64* %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @DOUBLE_FAULT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %119
  %130 = load i32, i32* @common_tssp, align 4
  %131 = call %struct.TYPE_2__* @PCPU_GET(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @common_tssp, align 4
  %135 = call %struct.TYPE_2__* @PCPU_GET(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* @common_tssp, align 4
  %139 = call %struct.TYPE_2__* @PCPU_GET(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %5, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.i386_frame*
  %152 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  store %struct.i386_frame* %151, %struct.i386_frame** %152, align 8
  br label %212

153:                                              ; preds = %119
  %154 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  %155 = load %struct.i386_frame*, %struct.i386_frame** %154, align 8
  %156 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.trapframe*
  store %struct.trapframe* %158, %struct.trapframe** %7, align 8
  %159 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %160 = icmp eq %struct.trapframe* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = load i64*, i64** %5, align 8
  store i64 0, i64* %162, align 8
  %163 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  store %struct.i386_frame* null, %struct.i386_frame** %163, align 8
  %164 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %212

165:                                              ; preds = %153
  %166 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %167 = call i32 @get_esp(%struct.trapframe* %166)
  store i32 %167, i32* %10, align 4
  %168 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %169 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %9, align 4
  %171 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %172 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %8, align 4
  switch i32 %174, label %189 [
    i32 128, label %175
    i32 129, label %180
    i32 130, label %187
  ]

175:                                              ; preds = %165
  %176 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %177 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %178)
  br label %191

180:                                              ; preds = %165
  %181 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %182 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %183 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.thread*, %struct.thread** %6, align 8
  %186 = call i32 @decode_syscall(i32 %184, %struct.thread* %185)
  br label %191

187:                                              ; preds = %165
  %188 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %191

189:                                              ; preds = %165
  %190 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %187, %180, %175
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %192, i32 %193, i32 %194)
  %196 = load i32, i32* %8, align 4
  switch i32 %196, label %204 [
    i32 128, label %197
    i32 130, label %197
    i32 129, label %203
  ]

197:                                              ; preds = %191, %191
  %198 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %199 = call i32 @TRAPF_USERMODE(%struct.trapframe* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  br label %204

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %191, %202
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %204

204:                                              ; preds = %191, %203, %201
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64*, i64** %5, align 8
  store i64 %206, i64* %207, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to %struct.i386_frame*
  %211 = load %struct.i386_frame**, %struct.i386_frame*** %4, align 8
  store %struct.i386_frame* %210, %struct.i386_frame** %211, align 8
  br label %212

212:                                              ; preds = %204, %161, %129, %111
  ret void
}

declare dso_local i32 @db_get_value(i32, i32, i32) #1

declare dso_local i32 @db_search_symbol(i32, i32, i32*) #1

declare dso_local i32 @db_symbol_values(i32, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @db_print_stack_entry(i8*, i32, i32, i32, i32, i64*) #1

declare dso_local %struct.TYPE_2__* @PCPU_GET(i32) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @get_esp(%struct.trapframe*) #1

declare dso_local i32 @decode_syscall(i32, %struct.thread*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @TRAPF_USERMODE(%struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
